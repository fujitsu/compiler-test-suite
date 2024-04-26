program main
  call s1()
  call s2()
  call s3()
  print *,'pass'
end program main

subroutine s1
  integer, target :: y, z
  block
    type x
       integer :: x1 = 1
       integer :: x2 = 2
       integer, allocatable :: x3(:)
       integer, pointer :: x4 => NULL()
    end type x
    do i=1,4
       block
         type(x) :: v
         select case(i)
         case(1)
            if (v%x1 /= 1) print *,1
            if (v%x2 /= 2) print *,2
            if (associated(v%x4)) print *,3
            v%x1 = 11
            v%x2 = 12
            allocate(v%x3(2),source=[1,2])
            v%x4 => z
            if (v%x1 /= 11) print *,5
            if (v%x2 /= 12) print *,6
            if (any(v%x3 /= [1,2])) print *,7
         case default
            allocate(v%x3(2),source=[1,2])
            if (v%x1 /= 1) print *,9
            if (v%x2 /= 2) print *,10
            if (size(v%x3) /= 2) print *,11
            if (any(v%x3 /= [1,2])) print *,12
            if (associated(v%x4)) print *,13
         end select
      end block
   end do
  end block
end subroutine s1

subroutine s2
  type x
     integer :: x1 = 1
     integer :: x2 = 2
  end type x
  do i=1,4
     block
       type(x) :: v(i)
       if (any(v%x1 /= 1)) print *,21
       if (any(v%x2 /= 2)) print *,22
       if (size(v) /= i) print *,23
       v = x(11,12)
       if (any(v%x1 /= 11)) print *,24
       if (any(v%x2 /= 12)) print *,25
     end block
  end do
end subroutine s2

subroutine s3
  integer, target :: y, z
  type x
     integer :: x1 = 1
     integer :: x2 = 2
     integer, allocatable :: x3(:)
     integer, pointer :: x4 => NULL()
  end type x
  do i=1,4
     block
     type(x), save :: v
     select case(i)
     case(1)
        if (v%x1 /= 1) print *,31
        if (v%x2 /= 2) print *,32
        if (associated(v%x4)) print *,33
        v%x1 = 2
        v%x2 = 1
        allocate(v%x3(3))
        v%x3 = [1,2,3]
        v%x4 => z
     case default
        if (v%x1 /= 2) print *,35
        if (v%x2 /= 1) print *,36
        if (size(v%x3) /= 3) print *,37
        if (any(v%x3/=[1,2,3])) print *,38
        if (associated(v%x4,z) .eqv. .false.) print *,39
     end select
     end block
  end do
end subroutine s3

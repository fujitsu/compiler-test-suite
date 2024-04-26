program main
  call associate_const
  call forall_const
  call if_const
  call select_type_const
  call where_const
  print *,'pass'
end program main

subroutine associate_const
  block
    associate (c => 1+1)
      i = c
    end associate
  end block
  if (i /= 2) print *,'associate'
end subroutine associate_const

subroutine forall_const
  integer :: a(3)
  block
    forall (i=1:3)
       a(i) = i
    end forall
  end block
  if (any(a /= [1,2,3])) print *,'forall'
end subroutine forall_const

subroutine if_const
  integer :: i = 0
  block
    if (.true.) then
       i = 1
    else
       print *,'else'
    end if
  end block
  if (i /= 1) print *,'if'
end subroutine if_const

subroutine select_type_const
  block
    type p1
       real :: x,y
    end type p1
    type, extends(p1) :: p2
       real :: z
    end type
    type(p2), target :: t_p2
    class(p1), pointer :: p_p1
    p_p1 => t_p2
    select type (p_p1)
      class is (p2)
      class default
        print *,'select_type'
    end select
  end block
end subroutine select_type_const

subroutine where_const
  integer :: a(5), b(5), c(5)
  block
    do i=1,5
       a(i) = i
       b(i) = 6-i
    end do
    where (a > b)
       c = a
    elsewhere
       c = b
    end where
  end block
  if (any(c /= [5,4,3,4,5])) print *,'where'
end subroutine where_const


program main
  real(kind=4),dimension(1:64) :: a,b,res
  integer(kind=8),dimension(1:64) :: c
  integer(kind=4),dimension(1:64) :: x,y
  interface
     subroutine init(a,b,c,res,x,y)
       real(kind=4),dimension(1:64) :: a,b,res
       integer(kind=8),dimension(1:64) :: c
       integer(kind=4),dimension(1:64) :: x,y
     end subroutine init
  end interface
  call init(a,b,c,res,x,y)
  do i=1,2
     call test(a,b,c,x,y)
  enddo
  do i=1,64
     if (.not.is_equal_r4(a(i), res(i))) then
        print *, "i=", i, "a(i)=", a(i), "master=", res(i)
        print *, "NG"
     endif

  enddo
  print *, "OK"
contains
  logical function is_equal(a, b)
    if ( a.eq.b ) then
       is_equal = .true.
    else
       is_equal = .false.
    endif
  end function is_equal

  logical function is_equal_r4(a, b)
    real(kind=4)::a,b
    if ( a.eq.b ) then
       is_equal_r4 = .true.
    else if ( a.eq.0 ) then
       is_equal_r4 = ( b .lt. (1.0E-6)) 
    else 
       is_equal_r4 = ( abs(a-b)/abs(a) .lt. (1.0E-6) )
    end if
  end function is_equal_r4

  logical function is_equal_r8(a, b)
    real(kind=8)::a,b
    if ( a.eq.b ) then
       is_equal_r8 = .true.
    else if ( a.eq.0 ) then
       is_equal_r8 = ( b .lt. (1.0E-13)) 
    else 
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. (1.0E-13) )
    end if
  end function is_equal_r8
end program main

subroutine init(a,b,c,res,x,y)
  real(kind=4),dimension(1:64) :: a,b,res
  integer(kind=8),dimension(1:64) :: c
  integer(kind=4),dimension(1:64) :: x,y

  do i=1,64
     a(i) = 0._4
     if (i .gt. 64/2) then
        b(i) = real(i+1,kind=4)
        c(i) = 2_8
     else
        b(i) = real(-i,kind=4)
        c(i) = -2_8
        res(i) = b(i) ** c(i)
     endif
     res(i) = 0._4
     x(i) = real(i,kind=4)
     y(i) = 0._4
  enddo

  do i=1,64,2
     y(i) = real(i,kind=4)
     res(i) = b(i) ** c(i)
  enddo
end subroutine init

subroutine test(a,b,c,x,y)
  real(kind=4),dimension(1:64) :: a,b
  integer(kind=8),dimension(1:64) :: c
  integer(kind=4),dimension(1:64) :: x,y

  do i=1,64
     if (x(i) == y(i)) then
        a(i) = b(i) ** c(i)
     endif
  enddo
end subroutine test

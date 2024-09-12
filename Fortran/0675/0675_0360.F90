
program main
  complex(kind=4),dimension(1:64) :: a,b,res
  integer(kind=4),dimension(1:64) :: x,y
  interface
     subroutine init(a,b,res,x,y)
       complex(kind=4),dimension(1:64) :: a,b,res
       integer(kind=4),dimension(1:64) :: x,y
     end subroutine init
  end interface
  call init(a,b,res,x,y)
  do i=1,2
     call test(a,b,x,y)
  enddo
  do i=1,64
     if ((.not.is_equal_r4(real(a(i)), real(res(i)))).or. &
          (.not.is_equal_r4(imag(a(i)), imag(res(i))))) then
        print *, "i=", i, "a(i)=", real(a(i)), ",", imag(a(i)), "master=", real(res(i)), ",", imag(res(i))
        print *, "NG"
     endif

  enddo
  print *, "OK"
contains
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

subroutine set(x,y,z)
  complex(kind=4) :: x
  real(kind=4) :: y,z
  real(kind=4) :: a,b

  if ((y .eq. 0.)) then
     a = 0. +1.
  else
     a = y
  endif
  if ((z .eq. 0.)) then
     b = 0. +1.
  else
     b = z
  endif
  x = cmplx(a,b)
end subroutine set
subroutine init(a,b,res,x,y)
  complex(kind=4),dimension(1:64) :: a,b,res
  integer(kind=4),dimension(1:64) :: x,y

  do i=1,64
     a(i) = 0._4
     if (i .gt. 64/2) then
        call set(b(i) ,real(i,kind=4), real(-i,kind=4))
     else
        call set(b(i) ,real(-i,kind=4), real(i,kind=4))
     endif
     res(i) = 0._4
     x(i) = real(i,kind=4)
     y(i) = 0._4
  enddo

  do i=1,64,2
     y(i) = real(i,kind=4)
     res(i) = atan(b(i))
  enddo
end subroutine init

subroutine test(a,b,x,y)
  complex(kind=4), dimension(1:64) :: a,b
  integer(kind=4),dimension(1:64) :: x,y

  do i=1,64
     if (x(i) == y(i)) then
        a(i) = atan(b(i))
     endif
  enddo
end subroutine test

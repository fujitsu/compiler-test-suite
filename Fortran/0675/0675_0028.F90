
program main
  
  complex(kind=4),dimension(1:64) :: a,b,res
  real(kind=8),dimension(1:64) :: x,y
  interface
     subroutine init(a,b,res,f,x,y)
       
       complex(kind=4),dimension(1:64) :: a,b,res
       real(kind=8),dimension(1:64) :: x,y
       external f
       complex(kind=4) :: f
     end subroutine init
  end interface
  intrinsic ccos
  call init(a,b,res,ccos,x,y)
  call test(a,b,x,y)
  do i=1,64
     if ((.not.is_equal_r4(real(a(i)), real(res(i)))).or. &
          (.not.is_equal_r4(imag(a(i)), imag(res(i))))) then
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

subroutine init(a,b,res,f,x,y)
  
  complex(kind=4),dimension(1:64) :: a,b,res
  real(kind=8),dimension(1:64) :: x,y
  external f
  complex(kind=4) :: f

  do i=1,64
     a(i) = 0._4
     res(i) = 0._4
     if (i .gt. 64/2) then
        b(i) = cmplx(i,-i,kind=4)
     else
        b(i) = cmplx(-i,i,kind=4)
     endif
     x(i) = real(i,kind=8)
     y(i) = 0._8
  enddo

  do i=1,64,3
     y(i) = real(i,kind=8)
     if (i .gt. 64/2) then
        res(i) = f(cmplx(i,-i,kind=4))
     else
        res(i) = f(cmplx(-i,i,kind=4))
     endif
  enddo
end subroutine init

subroutine test(a,b,x,y)
  
  complex(kind=4), dimension(1:64) :: a,b
  real(kind=8),dimension(1:64) :: x,y
  
  do i=1,64
     if (x(i) == y(i)) then
        a(i) = ccos(b(i))
     endif
  enddo
end subroutine test

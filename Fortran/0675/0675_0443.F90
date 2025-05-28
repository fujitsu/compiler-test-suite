
program main
  complex(kind=8),dimension(1:64) :: a,b,res
  complex(kind=8),dimension(1:64) :: c
  integer(kind=4),dimension(1:64) :: x,y
  interface
     subroutine init(a,b,c,res,x,y)
       complex(kind=8),dimension(1:64) :: a,b,res
       complex(kind=8),dimension(1:64) :: c
       integer(kind=4),dimension(1:64) :: x,y
     end subroutine init
  end interface
  call init(a,b,c,res,x,y)
  do i=1,2
     call test(a,b,c,x,y)
  enddo
  do i=1,64
     if ((.not.is_equal_r8(real(a(i)), real(res(i)))).or. &
          (.not.is_equal_r8(imag(a(i)), imag(res(i))))) then
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
       is_equal_r8 = ( b .lt. (1.0E-12)) 
    else 
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. (1.0E-12) )
    end if
  end function is_equal_r8
end program main

subroutine set(x,y,z)
  complex(kind=8) :: x
  real(kind=8) :: y,z
  real(kind=8) :: a,b
  a = y
  b = z
  x = cmplx(a,b)
end subroutine set
subroutine init(a,b,c,res,x,y)
  complex(kind=8),dimension(1:64) :: a,b,res
  complex(kind=8),dimension(1:64) :: c
  integer(kind=4),dimension(1:64) :: x,y

  do i=1,64
     a(i) = 0._8
     if (i .gt. 64/2) then
        call set(b(i) ,real(i+1,kind=8), real(-i+2,kind=8))
        c(i) = cmplx(3._8,3._8)
     else
        call set(b(i) ,real(-i,kind=8), real(i*2,kind=8))
        c(i) = cmplx(3._8,3._8)
     endif
     res(i) = 0._8
     x(i) = real(i,kind=8)
     y(i) = 0._8
  enddo

  do i=1,64,2
     y(i) = real(i,kind=8)
     res(i) = b(i) ** c(i)
  enddo

end subroutine init

subroutine test(a,b,c,x,y)
  complex(kind=8),dimension(1:64) :: a,b
  complex(kind=8),dimension(1:64) :: c
  integer(kind=4),dimension(1:64) :: x,y

  do i=1,64
     if (x(i) == y(i)) then
        a(i) = b(i) ** cmplx(3._8,3._8)
     endif
  enddo
end subroutine test

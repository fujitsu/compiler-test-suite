
program main
  complex(kind=8),dimension(1:64) :: a,b,res
  integer(kind=4) :: c
  interface
     subroutine init(a,b,c,res)
       complex(kind=8),dimension(1:64) :: a,b,res
       integer(kind=4) :: c
     end subroutine init
  end interface
  call init(a,b,c,res)
  do i=1,2
     call test(a,b,c)
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
       is_equal_r8 = ( b .lt. (1.0E-13)) 
    else 
       is_equal_r8 = ( abs(a-b)/abs(a) .lt. (1.0E-13) )
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
subroutine init(a,b,c,res)
  complex(kind=8),dimension(1:64) :: a,b,res
  integer(kind=4) :: c

  do i=1,64
     a(i) = 0._8
     if (i .gt. 64/2) then
        call set(b(i) ,real(i+1,kind=8), real(-i+2,kind=8))
     else
        call set(b(i) ,real(-i,kind=8), real(i*2,kind=8))
     endif
     c = 2_4
     res(i) = b(i) ** c
  enddo
end subroutine init

subroutine test(a,b,c)
  complex(kind=8),dimension(1:64) :: a,b
  integer(kind=4) :: c

  do i=1,64
     a(i) = b(i) ** c
  enddo
end subroutine test

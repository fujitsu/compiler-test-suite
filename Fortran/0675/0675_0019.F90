
program main
  complex(kind=8),dimension(1:64) :: a,b,res
  integer(kind=8), dimension(1:64) :: x
  interface
     subroutine init(a,b,res,x)
       complex(kind=8),dimension(1:64) :: a,b,res
       integer(kind=8), dimension(1:64) :: x
     end subroutine init
  end interface
  call init(a,b,res,x)
  do i=1,2
     call test(a,b,x)
  enddo
  do i=1,64
     if ((.not.is_equal_r8(real(a(i)), real(res(i)))).or. &
          (.not.is_equal_r8(imag(a(i)), imag(res(i))))) then
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

subroutine init(a,b,res,x)
  complex(kind=8),dimension(1:64) :: a,b,res
  integer(kind=8), dimension(1:64) :: x

  do i=1,64
     a(i) = 0._4
     if (i .gt. 64/2) then
        b(i) = cmplx(i/64,i/2*64,kind=8)
        res(i) = atan(cmplx(i/64,i/2*64,kind=8))
     else
        b(i) = cmplx(i/2*64,i/64,kind=8)
        res(i) = atan(cmplx(i/2*64,i/64,kind=8))
     endif

     if (mod(i, 2) == 0) then
        x(i) = 1
     else
        x(i) = 0
        res(i) = a(i)
     endif

  enddo
end subroutine init

subroutine test(a,b,x)
  complex(kind=8), dimension(1:64) :: a,b
  integer(kind=8), dimension(1:64) :: x
  
  do i=1,64
     if (x(i) == 1) then 
        a(i) = atan(b(i))
     endif
  enddo
end subroutine test

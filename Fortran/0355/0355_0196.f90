program main
  complex(kind=8),dimension(1:64) :: a,b,res
  integer,dimension(1:64) :: mask
  call init(a,b,res,mask)
  call test(a,b,mask)
  call check(a,res)

  call init(a,b,res,mask)
  call test2(a,b,mask)
  call check(a,res)

  call init(a,b,res,mask)
  call test3(a,b,mask)
  call check(a,res)

  call init(a,b,res,mask)
  call test4(a,b,mask)
  call check(a,res)
  
  print *, "OK"
end program main

subroutine check(a,res)
  complex(kind=8),dimension(1:64) :: a,res
  do i=1,64
     if(((abs(real(a(i)) - real( res(i)))/abs(real(a(i)))) .gt. 1.0D-13 .or. (abs(imag(a(i)) - imag( res(i)))/abs(imag(a(i)))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
end subroutine check

subroutine init(a,b,res,mask)
  complex(kind=8),dimension(1:64) :: a,b,res
  integer,dimension(1:64) :: mask

  do i=1,64
     b(i) = cmplx(i,-i,kind=8)
     a(i) = cmplx(i,i,kind=8)
     res(i) = cmplx(i,i,kind=8)
     mask(i) = 0
  enddo
  do i=1,64,2
     res(i) = a(i) * b(i)
     mask(i) = 1
  enddo

end subroutine init


subroutine test(a,b,mask)
  complex(kind=8), dimension(64) :: a, b
  integer,dimension(1:64) :: mask

  do i=1,64
     if ( mask(i) .eq. 1 ) then
        a(i) = a(i) * b(i)
     endif
  enddo
end subroutine test

subroutine test2(a,b,mask)
  complex(kind=8), dimension(64) :: a, b
  integer,dimension(1:64) :: mask

  do i=1,64
     if ( mask(i) .eq. 1 ) then
        a(i) = a(i) * b(i)
     endif
  enddo
end subroutine test2


subroutine test3(a,b,mask)
  complex(kind=8), dimension(64) :: a, b
  integer,dimension(1:64) :: mask
  do i=1,64
     if ( mask(i) .eq. 1 ) then
        a(i) = a(i) * b(i)
     endif
  enddo
end subroutine test3


subroutine test4(a,b,mask)
  complex(kind=8), dimension(64) :: a, b
  integer,dimension(1:64) :: mask
  do i=1,64
     if ( mask(i) .eq. 1 ) then
        a(i) = a(i) * b(i)
     endif
  enddo
end subroutine test4

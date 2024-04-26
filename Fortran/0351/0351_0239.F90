program main
  real(kind=4),dimension(1:64) :: a,b
  complex(kind=4),dimension(1:64) :: res,dest
  integer,dimension(1:64) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(dest,a,b,mask)
  enddo
  do i=1,64
     if(((abs(real(dest(i)) - real(res(i)))/abs(real(dest(i)))) .gt. 1.0E-6 .or. (abs(imag(dest(i)) - imag(res(i)))/abs(imag(dest(i)))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  real(kind=4),dimension(1:64) :: a,b
  complex(kind=4),dimension(1:64) :: res
  integer,dimension(1:64) :: mask

  do i=1,64
     if (i .gt. 64/2) then
        a(i) = real(i,kind=4)
        b(i) = real(i,kind=4)
	res(i) = cmplx(i,i,kind=4)
     else
        a(i) = real(-i,kind=4)
        b(i) = real(-i,kind=4)
	res(i) = cmplx(-i,-i,kind=4)
     endif
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(dest,a,b,mask)
  real(kind=4), dimension(1:64) :: a, b
  complex(kind=4), dimension(1:64) :: dest
  integer,dimension(1:64) :: mask








  do i=1,64
     dest(i) = cmplx(a(i), b(i))
  enddo

end subroutine test

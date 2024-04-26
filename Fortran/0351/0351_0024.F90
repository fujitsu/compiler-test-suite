program main
  complex(kind=4),dimension(1:64) :: a
  real(kind=4),dimension(1:64) :: res,dest
  integer,dimension(1:64) :: mask
  call init(a,res,mask)
  do i=1,2
     call test(dest,a,mask)
  enddo
  do i=1,64
     if(((abs(dest(i) - res(i))/abs(dest(i))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,res,mask)
  complex(kind=4),dimension(1:64) :: a
  real(kind=4),dimension(1:64) :: res
  integer,dimension(1:64) :: mask

  do i=1,64
     if (i .gt. 64/2) then
	a(i) = cmplx(i,i,kind=4)
        res(i) = real(2*i,kind=4)
     else
	a(i) = cmplx(-i,-i,kind=4)
        res(i) = real(-2*i,kind=4)
     endif
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(dest,a,mask)
  complex(kind=4), dimension(1:64) :: a
  real(kind=4), dimension(1:64) :: dest
  integer,dimension(1:64) :: mask
  do i=1,64
     dest(i) = imag(a(i) + a(i))
  enddo

end subroutine test

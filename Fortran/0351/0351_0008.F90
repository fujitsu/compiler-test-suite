program main
  complex(kind=8),dimension(1:64) :: a,b,res
  integer,dimension(1:64) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  do i=1,64
     if(((abs(real(a(i)) - real(res(i)))/abs(real(a(i)))) .gt. 1.0D-13 .or. (abs(imag(a(i)) - imag(res(i)))/abs(imag(a(i)))) .gt. 1.0D-13)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  complex(kind=8),dimension(1:64) :: a,b,res
  integer,dimension(1:64) :: mask

  do i=1,64
     a(i) = cmplx(0,0,kind=8)
     if (i .gt. 64/2) then
        b(i) = cmplx(i,i,kind=8)
	res(i) = cmplx(2*i,2*i,kind=8)
     else
        b(i) = cmplx(-i,-i,kind=8)
	res(i) = cmplx(-2*i,-2*i,kind=8)
     endif
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,mask)
  complex(kind=8), dimension(1:64) :: a, b
  integer,dimension(1:64) :: mask
  do i=1,64
     a(i) = a(i) + b(i)
  enddo

end subroutine test

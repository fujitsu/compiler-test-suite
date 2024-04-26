program main
  complex(kind=4),dimension(1:64) :: dest,src,res
  integer,dimension(1:64) :: mask
  call init(dest,src,res,mask)
  do i=1,2
     call test(dest,src,mask)
  enddo
  do i=1,64
     if(((abs(real(dest(i)) - real( res(i)))/abs(real(dest(i)))) .gt. 1.0E-6 .or. (abs(imag(dest(i)) - imag( res(i)))/abs(imag(dest(i)))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(dest,src,res,mask)
  complex(kind=4),dimension(1:64) :: dest,src,res
  integer,dimension(1:64) :: mask

  do i=1,64
     dest(i) = cmplx(0,0,kind=4)
     if (i .gt. 64/2) then
        src(i) = cmplx(i,i,kind=4)
	res(i) = cmplx(-i,-i,kind=4)
     else
        src(i) = cmplx(i,-i,kind=4)
	res(i) = cmplx(-i,i,kind=4)
     endif
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(dest,src,mask)
  complex(kind=4), dimension(1:64) :: dest,src
  integer,dimension(1:64) :: mask








  do i=1,64
     dest(i) = - src(i)
  enddo

end subroutine test

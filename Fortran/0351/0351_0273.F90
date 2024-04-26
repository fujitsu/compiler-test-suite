program main
  complex(kind=4),dimension(64) :: a,b,res
  integer,dimension(1:64) :: mask
  call init(a,b,mask)
  do i=1,2
     call test(a,b,res,mask)
  enddo
  do i=1,64
     if(((abs(real(cmplx(i,i,kind=4)) - real( res(i)))/abs(real(cmplx(i,i,kind=4)))) .gt. 1.0E-6 .or. (abs(imag(cmplx(i,i,kind=4)) - imag( res(i)))/abs(imag(cmplx(i,i,kind=4)))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,mask)
  complex(kind=4),dimension(64) :: a,b
  integer,dimension(1:64) :: mask

  do i=1,64
     a(i) = cmplx(i,0,kind=4)
     b(i) = cmplx(0,i,kind=4)
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,res,mask)
  complex(kind=4), dimension(1:64) :: a, b, res
  complex(kind=4) :: tmp
  integer,dimension(1:64) :: mask

  do i=1,64
     if(a(i) .eq. b(i)) then
       tmp = cmplx(0,0,kind=8)
     else
       tmp = cmplx(i,i,kind=8)
     endif
     res(i) = tmp
  enddo

end subroutine test

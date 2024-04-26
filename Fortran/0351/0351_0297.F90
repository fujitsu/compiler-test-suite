program main
  complex(kind=4),dimension(64) :: a,res
  logical(kind=4),dimension(64) :: b
  integer,dimension(1:64) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,res,mask)
  enddo
  do i=1,64
     if(i .gt. 64/2) then
          if(((abs(real(cmplx(real(i,kind=4),real(i,kind=4),kind=4)) - real( res(i)))/abs(real(cmplx(real(i,kind=4),real(i,kind=4),kind=4)))) .gt. 1.0E-6 .or. (abs(imag(cmplx(real(i,kind=4),real(i,kind=4),kind=4)) - imag( res(i)))/abs(imag(cmplx(real(i,kind=4),real(i,kind=4),kind=4)))) .gt. 1.0E-6)) then
     	     print *, "NG"
          endif
     else
          if(cmplx(0._4,0._4,kind=4) .ne. res(i)) then
	     print *, "NG"
          endif
     endif
  enddo	
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  complex(kind=4),dimension(1:64) :: a,res
  logical(kind=4),dimension(1:64) :: b
  integer,dimension(1:64) :: mask

  do i=1,64
     a(i) = cmplx(real(i,kind=4),real(i,kind=4),kind=4)
     res(i) = cmplx(0._4,0._4,kind=4)
     if(i .gt. 64/2) then
          b(i) = .TRUE.
     else
	  b(i) = .FALSE.
     endif
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,res,mask)
  complex(kind=4),dimension(1:64) :: a,res
  logical(kind=4),dimension(1:64) :: b
  integer,dimension(1:64) :: mask

  do i=1,64
     if(b(i) .eqv. .TRUE.) then
       res(i) = a(i)
     endif
  enddo

end subroutine test

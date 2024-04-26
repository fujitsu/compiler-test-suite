program main
  real(kind=4),dimension(64) :: a,res
  complex(kind=4),dimension(64) :: b
  integer,dimension(1:64) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  do i=1,64
     if(((abs(a(i) -  res(i))/abs(a(i))) .gt. 1.0E-6)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,mask)
  real(kind=4),dimension(1:64) :: a,res
  complex(kind=4),dimension(1:64) :: b
  integer,dimension(1:64) :: mask

  do i=1,64
     a(i) = 0._4
     if (i .gt. 64/2) then
        b(i) = cmplx(i,-i,kind=4)
     else
        b(i) = cmplx(-i,i,kind=4)
     endif
     res(i) = sqrt(real(i*i,kind=4) * 2.0_4)
     mask(i) = 1_4
  enddo
end subroutine init


subroutine test(a,b,mask)
  real(kind=4), dimension(1:64) :: a
  complex(kind=4), dimension(1:64) :: b
  integer,dimension(1:64) :: mask
  do i=1,64
     a(i) = abs(b(i))
  enddo

end subroutine test

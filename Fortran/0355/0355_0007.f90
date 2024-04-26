program main
  parameter (n = 10)
  complex(8) :: a(10), b(10,10), c(20)
  integer i, j, k
  call init(b,c,n)
  do i=1,5000
     call sub(a,b,c,n)
  enddo
  if (abs(real(a(10))) .eq. real(2.0d0*b(10,1)*c(20))) then
     print *,"OK"
  else
     print *,"NG"
  endif
end program main

subroutine init(b,c,n)
  complex(8) :: b(10,10), c(20)
  do i = 1,n
    do j=1,10
       do k=1,10
          b(k,i) = 1.0d0
          c(k+j) = 2.0d0
       enddo
    enddo
  enddo
end subroutine init

subroutine sub(a,b,c,n)
  complex(8) :: a(10), b(10,10), c(20)
  do i = 1,n
    do j=1,10
       do k=1,10
          a(k) = 2.0d0*(b(k,1)*c(k+j))
       enddo
    enddo
 enddo
end subroutine



integer function foo(i,j,k)
  foo = i*2+j*3+k*5
  return
end function foo

subroutine collapse(n,a,b,c)
  use omp_lib
  integer i, j, k, n, foo
  integer a(n,n,n), b(n,n,n), c(n,n,n)

  !$omp parallel do ordered(2)
  do k = 2,n
     do j = 4,n
        do i = 2,n
           a(i,j,k) = foo(i,j,k)
           b(i,j-3,k-1) = a(i,j,k)
           c(i,j-1,k-1) = b(i-1,j-3,k-1)
        end do
     end do
  end do

end subroutine collapse


subroutine collapse_seq(n,a,b,c)
  integer i, j, k, n, foo
  integer a(n,n,n), b(n,n,n), c(n,n,n)

  do k = 2,n
     do j = 4,n
        do i = 2,n
           a(i,j,k) = foo(i,j,k)
           b(i,j-3,k-1) = a(i,j,k)
           c(i,j-1,k-1) = b(i-1,j-3,k-1)
        end do
     end do
  end do

end subroutine collapse_seq


program main
  implicit none
  integer, parameter:: n=20
  integer:: a(n,n,n), b(n,n,n), c(n,n,n)
  integer:: d(n,n,n), e(n,n,n), f(n,n,n)
  integer i,j,k
  integer nga,ngb,ngc

  a=9999
  b=8888
  c=7777
  call collapse(n,a,b,c)

  d=9999
  e=8888
  f=7777
  call collapse_seq(n,d,e,f)

900 format(a12,i8,i8,i8,i8,i8,i8,i8,i8,i8,i8)

  nga=0
  ngb=0
  ngc=0
  do k=1,n
     do j=1,n
        do i=1,n
           if (a(i,j,k) /= d(i,j,k)) nga=nga+1
           if (b(i,j,k) /= e(i,j,k)) ngb=ngb+1
           if (c(i,j,k) /= f(i,j,k)) ngc=ngc+1
        enddo
     enddo
  enddo

  write(*,*) "NG=",nga,ngb,ngc

end program main


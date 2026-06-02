subroutine sub(x,a,b,c,d,e,f,g,h,n)
  real*8 x(n),a(n),b(n),c(n),d(n),e(n),f(n),g(n),h(n)
!OCL EVAL_CONCURRENT
DO I=1,N
X(I)=A(I)*B(I)+C(I)*D(I)+E(I)*F(I)+G(I)*H(I)
ENDDO
end subroutine sub

program main
  integer, parameter::n = 10000
  real*8 x(n),a(n),b(n),c(n),d(n),e(n),f(n),g(n),h(n)
  a=1;b=1;c=1;d=1;e=1;f=1;g=1;h=1
  call sub(x,a,b,c,d,e,f,g,h,n)
  do i=1,n
     if (x(i) .ne. 4) then
        print *, i, x(i)
        stop
     endif
  end do
  print *, 'PASS'
  
end program main

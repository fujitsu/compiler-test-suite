parameter (n=8)
real(4),dimension(n,n)::b
real(4),dimension(n,n)::c,a
a=reshape((/(j,j=1,n*n)/),(/n,n/))
b=a
c=0
call sub1(a(::2,::2),b(::2,::2),c(::2,::2))
if (any(abs((/c(::2,::2)/)-(/&
560,592,624,656,2160,2320,2480,2640,3760,4048,4336,4624,5360,5776,6192,6608&
/))>0.001))print *,'error'
print *,'pass'
contains
subroutine sub1(x,y,z)
real(4),dimension(:,:)::y
real(4),dimension(:,:)::z,x
z(:,:)=matmul(x(:,:),y(:,:))
end subroutine sub1
end

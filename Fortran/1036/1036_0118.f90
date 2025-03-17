parameter (n=4)
real(8),dimension(n,n)::b
real(4),dimension(n,n)::c,a
a=reshape((/(j,j=1,n*n)/),(/n,n/))
b=a
call sub1(a,b,c,n)
if (any(abs((/c/)-(/ 90.0000000,100.000000,110.000000,120.000000,202.000000,228.000000,254.000000,280.000000,314.000000,356.000000,398.000000,440.000000,426.000000,484.000000,542.000000,600.000000/))>0.001))write(6,*) "NG"
c=0
call sub2(a,b,c,n)
if (any(abs((/c/)-(/ 90.0000000,100.000000,110.000000,120.000000,202.000000,228.000000,254.000000,280.000000,314.000000,356.000000,398.000000,440.000000,426.000000,484.000000,542.000000,600.000000/))>0.001))write(6,*) "NG"
print *,'pass'
contains
subroutine sub1(x,y,z,n)
real(8),dimension(n,n)::y
real(4),dimension(n,n)::z,x
z=matmul(x,y)
end subroutine sub1
subroutine sub2(x,y,z,n)
real(8),dimension(:,:)::y
real(4),dimension(:,:)::z,x
z=matmul(x,y)
end subroutine sub2
end

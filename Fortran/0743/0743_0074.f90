call ss1(-3,3,3,3,3,1)
call ss1(3,-3,3,3,3,2)
call ss1(-3,-3,3,3,3,3)
call x
print *,'pass'
end
subroutine ss1(i,j,k,l,m,kk)
integer(4)::a(i),b(i,j),c(i,j,k),d(i,j,k,l),e(i,j,k,l,m)
integer(4)::a1(i),b1(i,j),c1(i,j,k),d1(i,j,k,l),e1(i,j,k,l,m)
integer(4)::a2(i),b2(i,j),c2(i,j,k),d2(i,j,k,l),e2(i,j,k,l,m)
a=1;b=2;c=3;d=4;e=5
a1=1;b1=2;c1=3;d1=4;e1=5
a2=1;b2=2;c2=3;d2=4;e2=5
call chk1(a,b,c,d,e,kk)
call chk1(a1,b1,c1,d1,e1,kk)
call chk1(a2,b2,c2,d2,e2,kk)
contains
 subroutine chk1(a,b,c,d,e,kk)
 integer(4),dimension(:)::a
 integer(4),dimension(:,:)::b
 integer(4),dimension(:,:,:)::c
 integer(4),dimension(:,:,:,:)::d
 integer(4),dimension(:,:,:,:,:)::e
 write(1,*)'test'
select case(kk)
case(1)
 if (any(shape(a)/=(/0/)))write(6,*) "NG"
 if (any(shape(b)/=(/0,3/)))write(6,*) "NG"
 if (any(shape(c)/=(/0,3,3/)))write(6,*) "NG"
 if (any(shape(d)/=(/0,3,3,3/)))write(6,*) "NG"
 if (any(shape(e)/=(/0,3,3,3,3/)))write(6,*) "NG"
case(2)
 if (any(shape(a)/=(/3/)))write(6,*) "NG"
 if (any(shape(b)/=(/3,0/)))write(6,*) "NG"
 if (any(shape(c)/=(/3,0,3/)))write(6,*) "NG"
 if (any(shape(d)/=(/3,0,3,3/)))write(6,*) "NG"
 if (any(shape(e)/=(/3,0,3,3,3/)))write(6,*) "NG"
case(3)
 if (any(shape(a)/=(/0/)))write(6,*) "NG"
 if (any(shape(b)/=(/0,0/)))write(6,*) "NG"
 if (any(shape(c)/=(/0,0,3/)))write(6,*) "NG"
 if (any(shape(d)/=(/0,0,3,3/)))write(6,*) "NG"
 if (any(shape(e)/=(/0,0,3,3,3/)))write(6,*) "NG"
end select
write(2,*)kk,a,b,c,d,e
 end subroutine
end
subroutine x
rewind 2
read(2,*) ii;if (ii/=1)print *,'error-1'
read(2,*) ii;if (ii/=1)print *,'error-1'
read(2,*) ii;if (ii/=1)print *,'error-1'
read(2,*) ii,jj,kk,ll;if (ii/=2)print *,'error-2';if (any((/jj,kk,ll/)/=1))print *,'error-3'
read(2,*) ii,jj,kk,ll;if (ii/=2)print *,'error-2';if (any((/jj,kk,ll/)/=1))print *,'error-3'
read(2,*) ii,jj,kk,ll;if (ii/=2)print *,'error-2';if (any((/jj,kk,ll/)/=1))print *,'error-3'
read(2,*) ii;if (ii/=3)print *,'error-4'
read(2,*) ii;if (ii/=3)print *,'error-4'
read(2,*) ii;if (ii/=3)print *,'error-4'
read(2,*,end=1) ii
print *,'error-5'
1 end

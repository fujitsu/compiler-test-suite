call ss1(-3,3,3,3,3,1)
call ss1(3,-3,3,3,3,2)
call ss1(-3,-3,3,3,3,3)
print *,'pass'
end
subroutine ss1(i,j,k,l,m,kk)
real(4)::a(i),b(i,j),c(i,j,k),d(i,j,k,l),e(i,j,k,l,m)
a=0
call chk1(a,b,c,d,e,kk)
contains
 subroutine chk1(a,b,c,d,e,kk)
 real(4),dimension(:)::a
 real(4),dimension(:,:)::b
 real(4),dimension(:,:,:)::c
 real(4),dimension(:,:,:,:)::d
 real(4),dimension(:,:,:,:,:)::e
 write(37,*)'test'
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
write(38,*)a,b,c,d,e
 end subroutine
end

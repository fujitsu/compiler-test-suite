call ss1(-3,3,1)
call ss1(3,-3,2)
call ss1(-3,-3,3)
print *,'pass'
end
subroutine ss1(i,j,k)
real(4)::d(i,j),e(i),a(i,j),b(i,j),f(i),g(i),c(i,j),h(i)
call chk1(a,e,k)
call chk1(b,f,k)
call chk1(c,g,k)
call chk1(d,h,k)
contains
 subroutine chk1(b,e,k)
 real(4),dimension(:,:)::b
 real(4),dimension(:)::e
 write(36,*)'test'
select case(k)
case(1)
 if (any(shape(b)/=(/0,3/)))write(6,*) "NG"
 if (any(shape(e)/=(/0/)))write(6,*) "NG"
case(2)
 if (any(shape(b)/=(/3,0/)))write(6,*) "NG"
 if (any(shape(e)/=(/3/)))write(6,*) "NG"
case(3)
 if (any(shape(b)/=(/0,0/)))write(6,*) "NG"
 if (any(shape(e)/=(/0/)))write(6,*) "NG"
end select
 end subroutine
end

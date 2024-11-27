call ss1(-3,3,1)
call ss1(3,-3,2)
call ss1(-3,-3,3)
print *,'pass'
end
subroutine ss1(i,j,k)
real(4)::d(i,j),e(i)
call chk1(d,e,k)
contains
 subroutine chk1(b,e,k)
 real(4),dimension(:,:)::b
 real(4),dimension(:)::e
 write(1,*)'test'
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

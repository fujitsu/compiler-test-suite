integer b(3),a(3)
a=-1;b=-2
CALL OMP_SET_NUM_THREADS(1)
!$OMP PARALLEL PRIVATE(a,b)
a=(/10,20,30/)
b=(/100,200,300/)
a(2:3)=a(1:2)+1
b(2:3)=b(1:2)+1
if (any(a/=(/10,11,21/)))print *,'error-1'
if (any(b/=(/100,101,201/)))print *,'error-2'
call sub(a,b)
!$OMP END PARALLEL
print *,'pass'
contains
subroutine sub(x,y)
integer x(:),y(:)
if (any(x/=(/10,11,21/)))print *,'error-1'
if (any(y/=(/100,101,201/)))print *,'error-2'
end subroutine
end

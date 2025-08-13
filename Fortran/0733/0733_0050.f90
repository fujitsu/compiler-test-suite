integer ::a(2,3)=reshape((/1,2,3,4,5,6/),(/2,3/))
call sub(a)
call subx(a(2:-2,2:-2))
print *,'pass'
contains
subroutine sub(a)
integer::a(:,:)
call xx(a+1)
end subroutine
subroutine xx(a)
integer a(*)
if (any(a(1:6)/=1+(/1,2,3,4,5,6/)))print *,'error'
end subroutine
subroutine subx(a)
integer::a(:,:)
call yy(a+1)
end subroutine
subroutine yy(a)
integer a(:,:)
write(27,*) a,99
rewind 27
read(27,*) k
if (k/=99)print *,'error-2'
end subroutine
end

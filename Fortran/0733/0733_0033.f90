integer ,allocatable::a(:),b(:)
i=-5
allocate(a(i),b(i-3))
a=1
b=1
if (any(shape(a)/=(/0/)))print *,'error-11'
if (any(shape(b)/=(/0/)))print *,'error-12'
a=b
write(1,*)a,b
call sub(i,i-3)
write(1,*)99
rewind 1;read(1,*) k;if(k/=99)print *,'error-3'
print *,'pass'
contains
subroutine sub(i,j)
integer::a(i),b(j)
a=1
b=1
if (any(shape(a)/=(/0/)))print *,'error-21'
if (any(shape(b)/=(/0/)))print *,'error-22'
a=b
write(1,*)a,b
end subroutine
end

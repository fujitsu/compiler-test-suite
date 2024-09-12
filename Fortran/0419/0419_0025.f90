real(4),allocatable::a
real(8),allocatable::b
real(16),allocatable::c
call s1(a)
call s2(b)
call s3(c)
print *,'pass'
contains
subroutine s1(a)
real(4),allocatable::a
a=1.0
if(a/=1.0) print *,'err1'
end subroutine 
subroutine s2(b)
real(8),allocatable::b
b=1.0
if(b/=1.0_8) print *,'err2'
end subroutine 
subroutine s3(c)
real(16),allocatable::c
c=1.0
if(c/=1.0_16) print *,'erre'
end subroutine 
end

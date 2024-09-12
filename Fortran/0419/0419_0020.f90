complex(4),allocatable::a(:)
complex(8),allocatable::b(:)
complex(16),allocatable::c(:)
call s1(a)
call s2(b)
call s3(c)
print *,'pass'
contains
subroutine s1(a)
complex(4),allocatable::a(:)
a=[(1.0,0.0)]
if(any(a/=[(1.0,0.0)])) print *,'err1'
end subroutine 
subroutine s2(b)
complex(8),allocatable::b(:)
b=[(1.0,0.0)]
if(any(b/=[(1.0_8,0.0_8)])) print *,'err2'
end subroutine 
subroutine s3(c)
complex(16),allocatable::c(:)
c=[(1.0,0.0)]
if(any(c/=[(1.0_16,0.0_16)])) print *,'err2'
end subroutine 
end

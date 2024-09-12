call s1
call s2
print *,'pass'
end
subroutine s1
integer,allocatable::a
if(allocated(a)) print *,'err1'
a=1
if(.not.allocated(a)) print *,'err2'
if(a/=1) print *,'err3'
end
subroutine s2
integer,allocatable::a
if(allocated(a)) print *,'err1'
allocate(a)
a=1
if(.not.allocated(a)) print *,'err2'
if(a/=1) print *,'err3'
end

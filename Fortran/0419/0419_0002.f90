call s1
call s2
print *,'pass'
end
subroutine s1
character(2),allocatable::a
if(allocated(a)) print *,'err'
a="12"
if(.not.allocated(a)) print *,'err'
if(a/="12") print *,'err'
end
subroutine s2
character(2),allocatable::a
if(allocated(a)) print *,'err'
allocate(a)
a="12"
if(.not.allocated(a)) print *,'err'
if(a/="12") print *,'err'
end

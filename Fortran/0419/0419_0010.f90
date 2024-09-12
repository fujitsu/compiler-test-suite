call s1
call s2
print *,'pass'
end 
subroutine s1
character(*),allocatable::a*2
if(allocated(a)) print *,'err'
a=achar(97)//achar(98)
if(.not.allocated(a)) print *,'err'
if(a/="ab") print *,'err',a
end
subroutine s2
character(*),allocatable::a*2
if(allocated(a)) print *,'err'
allocate(a)
a=achar(97)//achar(98)
if(.not.allocated(a)) print *,'err'
if(a/="ab") print *,'err',a
end

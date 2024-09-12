call s2
call s4
print *,'pass'
end
subroutine s1
character(0),allocatable::a
if(allocated(a)) print *,'err1'
a=achar(97)//achar(98)
if(.not.allocated(a)) print *,'err2',allocated(a)
if(a/="") print *,'err3'
end
subroutine s2
character(0),allocatable::a
if(allocated(a)) print *,'err4'
allocate(a)
a=achar(97)//achar(98)
if(.not.allocated(a)) print *,'err5'
if(a/="") print *,'err6'
end
subroutine s3
character(-1),allocatable::a
if(allocated(a)) print *,'err7'
a=achar(97)//achar(98)
if(.not.allocated(a)) print *,'err8',allocated(a)
if(a/="") print *,'err9'
end
subroutine s4
character(-1),allocatable::a
if(allocated(a)) print *,'err10'
allocate(a)
a=achar(97)//achar(98)
if(.not.allocated(a)) print *,'err11'
if(a/="") print *,'err12'
end

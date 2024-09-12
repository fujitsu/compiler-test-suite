subroutine s1
character*4,target::w(2)='abcd'
character(2),allocatable::p1(:)
allocate(p1,source=w(:)(3:4))
if (len(p1)/=2)print *,302,len(p1)
if ((p1(1)/='cd'))print *,303,p1(1)
if ((p1(2)/='cd'))print *,304,p1(2)
end
call s1
print *,'pass'
end

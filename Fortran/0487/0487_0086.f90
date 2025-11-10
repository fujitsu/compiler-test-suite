character(1),allocatable::ch(:)
call s1(ch)
contains
subroutine s1(aaa)
character(*),allocatable::aaa(:)
allocate(aaa,mold=["12"],stat=i)
if(i/=0) print *,'err',i
print *,'pass'
end subroutine s1
end

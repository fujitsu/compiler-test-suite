call s1
print *,'pass'
contains
subroutine s1
type ty1
integer::aaa(2)
end type
type(ty1),allocatable::ttt
allocate(ttt)
ttt=ty1(aaa=[1,2])
if(any(ttt%aaa/=[1,2])) print *,'err'
end subroutine s1
end

type ttt
character(2):: iii(2)
end type
type(ttt),allocatable::sss
sss=ttt(iii=["abcdef","abcdef"])
if(any(sss%iii/=["ab","ab"])) print *,'err'
print *,'pass'
end

character(2),allocatable:: jjj(:)
type ttt
character(2):: iii(2)
end type
type(ttt),allocatable::sss
jjj=["abcdef","abcdef"]
sss=ttt(iii=jjj)
if(any(sss%iii/=["ab","ab"])) print *,'err'
print *,'pass'
end

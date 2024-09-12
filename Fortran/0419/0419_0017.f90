character(2),allocatable:: jjj
type ttt
character(2):: iii
end type
type(ttt),allocatable::sss
jjj="abcdef"
sss=ttt(iii=jjj)
if(sss%iii/="ab") print *,'err'
print *,'pass'
end

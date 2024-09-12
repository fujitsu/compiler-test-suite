type ttt
character(2):: iii
end type
type(ttt),allocatable::sss
sss=ttt(iii="abcdef")
if(sss%iii/="ab") print *,'err'
print *,'pass'
end

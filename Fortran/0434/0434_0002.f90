type ttt
integer,allocatable:: iii(:)
end type
type(ttt)::sss
integer::i1(100,100,100)
integer::i2(100,100,100)
integer::i3(100,100,100)
i1=-1
i2=-1
i3=-1
sss=ttt([reshape([1,2,3,4],[2,2]),i1,0,i2,i3,100])
if(sss%iii(3000006)/=100) print *,'err'
print *,'pass'
end

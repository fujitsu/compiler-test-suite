integer(1),parameter::i1(1,1)=1
integer(1),parameter::res1(1)=maxloc(i1,dim=1_1)
integer(1),parameter::res2(1)=minloc(i1,dim=1_1)

if(any(res1/=[1_1])) print *,'err1',res1
if(any(res2/=[1_1])) print *,'err2',res2
if(any(maxloc(i1,1_1)/=[1_1])) print *,'err4'
if(any(minloc(i1,1_1)/=[1_1])) print *,'err3'

print *,'pass'
end

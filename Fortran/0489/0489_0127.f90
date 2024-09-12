integer(1),parameter::i1(1,1)=1
integer(1),parameter::res1(1)=maxloc(i1,dim=1_1)
integer(1),parameter::res2(1)=minloc(i1,dim=1_1)
integer(1),parameter::res3(1)=maxval(i1,dim=1_1)
integer(1),parameter::res4(1)=minval(i1,dim=1_1)

if(any(res1/=[1_1])) print *,'err1'
if(any(maxloc(i1,1_1)/=[1_1])) print *,'err2'
write(1,*)res2
write(1,*)minloc(i1,dim=1_1)

write(1,*)res3
write(1,*)maxval(i1,dim=1_1)
write(1,*)res4
write(1,*)minval(i1,dim=1_1)
rewind 1
read(1,*) n;if (n/=1) print *,101
read(1,*) n;if (n/=1) print *,102
read(1,*) n;if (n/=1) print *,103
read(1,*) n;if (n/=1) print *,104
read(1,*) n;if (n/=1) print *,105
read(1,*) n;if (n/=1) print *,106
read(1,*,end=9) n;if (n/=1) print *,107

9 print *,'pass'
end

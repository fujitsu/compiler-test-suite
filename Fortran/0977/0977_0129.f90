parameter(i1=(int(z'ffffffff')))
parameter(i2=(int(z'80')))
integer(8),parameter::i3=int(z'80',kind=8)
if (int(z'ffffffff')/=-1) then
 print *,'error'
 print *,int(z'ffffffff')
endif
if (int(z'80')/=128) then
 print *,'error'
 print *,int(z'80')
endif
if (int(z'80',kind=8)/=128) then
 print *,'error'
 print *,int(z'80',kind=8)
endif
if (i1/=-1) then
 print *,'error'
endif
if (i2/=128) then
 print *,'error'
endif
if (i3/=128) then
 print *,'error'
endif
print *,'pass'
end

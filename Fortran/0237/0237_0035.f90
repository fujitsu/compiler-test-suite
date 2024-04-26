integer,parameter::i=4
character(kind=4),parameter::a*2=min(i_"1",i_"11",i_"00")
character(kind=4),parameter::b*2=max(i_"1",i_"11",i_"00")

if(a/=4_"00") print *,'err1'
if(b/=4_"11") print *,'err2'
print *,'pass'
end

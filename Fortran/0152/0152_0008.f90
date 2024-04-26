character*2::ch
character(65000)::ch1
character(*)::ch2*3
data ch(2:0)/'45'/
data ch1(65000:0)/'6'/
data ch2(3:1)/'6'/
if(ch/=ch(:)) print *,'err'
if(ch1/=ch1(:)) print *,'err'
if(ch2/=ch2(:)) print *,'err'
print *,'pass'
end

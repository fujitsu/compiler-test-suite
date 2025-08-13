subroutine ss(k)
complex,pointer::a(:,:,:)
complex,pointer::s(:)
complex,target::t(1,1,4)
complex,target::tt(1)
namelist /nam/a,s
a=>t(:,:,::k-1)
s=>tt
open(38,delim='quote')
a=reshape([(1,2),(4,5)],[1,1,2])
s=(7,8)
write(38,nam)
end
call ss(3)
call chk
print *,'pass'
end
subroutine chk
complex a(2),s
namelist /nam/a,s
rewind 38
read(38,nam) 
if (any(a/=[(1,2),(4,5)])) print *,101
if (   (s/=(7,8))) print *,102
end

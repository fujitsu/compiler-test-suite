subroutine s1
character(*),parameter::c(2)=max(['12','cd'],'ab')
integer               ::k   =len(max(['12','cd'],'ab'))
integer               ::kn(1)   =shape(max(['12','cd'],'ab'))
character(2)          ::d(2)
pointer::p(:)
target::t(2)
d=max(['12','cd'],'ab')
if (any(c/=['ab','cd']))print *,101
if (any(d/=['ab','cd']))print *,103
if (k/=2)print *,103
if (kn(1)/=2)print *,104
p(2:)=>t
if (2/=len(max(['12','cd'],'ab')))print *,203
if (int(x'12')==1)print *,404
end
call s1
print *,'pass'
end



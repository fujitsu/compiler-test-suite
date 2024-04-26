call s
print *,'pass'
end
subroutine s
k = trailz(-1)
m = trailz (0)
n = trailz (8)
if (kind(k).eq.4) then
if(k.ne.0) print *,'err1'
if(m.ne.32) print *,'err2'
if(n.ne.3) print *,'err3'
endif
end

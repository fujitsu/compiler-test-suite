k = leadz(-1)
m = leadz(0)
n = leadz(1)

if (kind(k).eq.4) then
if (k.ne.0) print *,'err'
if (m.ne.32) print *,'err'
if (n.ne.31) print *,'err'
endif
print *,'pass'
end

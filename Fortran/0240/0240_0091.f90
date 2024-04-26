k = dshiftr(1, 16, 3)

if (kind(k).eq.4) then
if (k.ne.536870914)print *,'err'
endif
print *,'pass'
end

k = 5
block
integer k
k = 10
if (1.eq.2)print *,k
if (k.ne.10) print *,'err'
end block
if (1.eq.2)print *,k
if (k.ne.5) print *,'err'
print *,'pass'
end

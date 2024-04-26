k = dshiftl(1, X'40000000', 2)

if (kind(k).eq.4) then
 if (k.ne.5)print *,'err'
end if
print *,'pass'
end

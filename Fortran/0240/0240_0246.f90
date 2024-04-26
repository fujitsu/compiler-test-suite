call s
print *,'pass'
end
subroutine s
k = popcnt(9)
if(k.ne.2) print *,'err'
end

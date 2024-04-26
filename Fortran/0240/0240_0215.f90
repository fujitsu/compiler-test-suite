call s
print *,'pass'
end
subroutine s
k = merge_bits(18,13,22)
if(k.ne.27) print *,'err'
end

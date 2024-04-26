subroutine s1
if (kind(popcnt(1_1)) /= 8 ) print *,101
if (kind(popcnt(1_2)) /= 8 ) print *,102
if (kind(popcnt(1_4)) /= 8 ) print *,103
if (kind(popcnt(1_8)) /= 8 ) print *,104
if (kind(poppar(1_1)) /= 8 ) print *,201
if (kind(poppar(1_2)) /= 8 ) print *,202
if (kind(poppar(1_4)) /= 8 ) print *,203
if (kind(poppar(1_8)) /= 8 ) print *,204
end
call s1
print *,'pass'
end

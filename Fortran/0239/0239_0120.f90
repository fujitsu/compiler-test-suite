subroutine s1
if (kind(popcnt(1_1)) /= 4 ) print *,101
if (kind(popcnt(1_2)) /= 4 ) print *,102
if (kind(popcnt(1_4)) /= 4 ) print *,103
if (kind(popcnt(1_8)) /= 4 ) print *,104
if (kind(poppar(1_1)) /= 4 ) print *,201
if (kind(poppar(1_2)) /= 4 ) print *,202
if (kind(poppar(1_4)) /= 4 ) print *,203
if (kind(poppar(1_8)) /= 4 ) print *,204
end
call s1
print *,'pass'
end

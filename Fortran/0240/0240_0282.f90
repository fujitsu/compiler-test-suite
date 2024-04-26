call s
print *,'pass'
end
subroutine s
k = shifta(-14142, 5)
if(k.ne.-442) print *,'err'
end

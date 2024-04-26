subroutine s1
if (shifta(-2147479552 , 8)/=-8388592) print *,103
if (shifta(-14142,5  )/=-442) print *,104
if (shiftl(223606,5  )/=7155392) print *,105
if (shiftr(-14142,5  )/=134217286) print *,106
end
call s1
print *,'pass'
end

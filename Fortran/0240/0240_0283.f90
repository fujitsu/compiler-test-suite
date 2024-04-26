call s
print *,'pass'
end
subroutine s
k = shiftl(223606, 5)
if(k.ne.7155392) print *,'err'
end

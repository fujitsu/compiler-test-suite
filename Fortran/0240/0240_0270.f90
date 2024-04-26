call s
print *,'pass'
end
subroutine s
i = rshift(-7,2)
if(i.ne.-2) print *,'err'
end

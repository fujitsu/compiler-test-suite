call s
print *,'pass'
end
subroutine s
i = sign (30,-2)
if(i.ne.-30) print *,'err'
end

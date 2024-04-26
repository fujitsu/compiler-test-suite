call s
print *,'pass'
end
subroutine s
i = precision (4.2)
if(i.ne.6) print *,'err'
end

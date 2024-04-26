call s
print *,'pass'
end
subroutine s
i = radix(2.3)
if(i.ne.2) print *,'err'
end

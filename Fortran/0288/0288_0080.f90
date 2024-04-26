call s
print *,'pass'
end
subroutine s
i = kind (0.0)
if(i.ne.4) print *,'err'
end

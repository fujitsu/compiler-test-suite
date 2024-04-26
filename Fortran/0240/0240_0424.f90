call s
print *,'pass'
end
subroutine s
i = ishft(3,2)
if(i.ne.12) print *,'err'
end

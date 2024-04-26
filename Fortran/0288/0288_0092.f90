call s
print *,'pass'
end
subroutine s
i = range(4.2)
if(i.ne.37) print *,'err'
end

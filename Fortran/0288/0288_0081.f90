call s
print *,'pass'
end
subroutine s
i = len ('Abcdefg')
if(i.ne.7) print *,'err'
end

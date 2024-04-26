call s
print *,'pass'
end
subroutine s
i = len_trim ('Abcdefg ')
if(i.ne.7) print *,'err1'
i = len_trim (' ')
if(i.ne.0) print *,'err2'
end


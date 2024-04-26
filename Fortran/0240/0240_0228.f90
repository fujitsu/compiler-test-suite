call s
print *,'pass'
end
subroutine s
character(len=50) :: char_string
character(len=1) :: nl
nl = new_line(char_string)
if(nl.ne.char(10)) print *,'err'
end

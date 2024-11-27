character(len=50) :: char_string
character(len=1) :: nl
nl = new_line(char_string)

if(nl .ne. ACHAR(10)) write(6,*) "NG"

print *,'pass'
end

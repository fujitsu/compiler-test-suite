call test()
call test2()
print *,'pass'
end
subroutine test()
character*7,parameter ::char_string='abcdefg'
if (char_string(2:4).ne.'bcd' ) print *,'err'
if (char_string(2: ).ne.'bcdefg' ) print *,'err'
if (char_string( :4).ne.'abcd' ) print *,'err'
if (char_string( : ).ne.'abcdefg' ) print *,'err'
if (char_string(3:3).ne.'c' ) print *,'err'
if ("abcdefg"(2:4).ne.'bcd' ) print *,'err'
if ("abcdefg"(3:2).ne.'') print *,'err'
end
subroutine test2()
character*7 ::char_string='abcdefg'
integer ii
ii=len(char_string(2:4))
if (ii.ne.3 )print *,'err'
ii=len(char_string(2: ))
if (ii.ne.6 )print *,'err'
ii=len(char_string( :4))
if (ii.ne.4 )print *,'err'
ii=len(char_string( : ))
if (ii.ne.7 )print *,'err'
ii=len(char_string(3:3))
if (ii.ne.1 )print *,'err'
ii=len('abcdefg'(2:4) )
if (ii.ne.3 )print *,'err'
ii=len('abcdefg'(3:2))
if (ii.ne.0 )print *,'err'
end

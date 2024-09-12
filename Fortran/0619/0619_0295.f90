subroutine s1
character(*),parameter::c='1'
integer,parameter::k01=ichar(c,1)
integer,parameter::k02=ichar(c,2)
integer,parameter::k04=ichar(c,4)
integer,parameter::k08=ichar(c,8)
if (k01/=ichar('1'))print *,101
if (k02/=ichar('1'))print *,102
if (k04/=ichar('1'))print *,103
if (k08/=ichar('1'))print *,104
end
call s1
print *,'pass'
end

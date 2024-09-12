subroutine s1
character,parameter::x=merge('a','b',.false.)
character          ::y=merge('a','b',.false.)
if (x/='b') print *,101
if (y/='b') print *,102
if (merge('a','b',.false.)/='b') print *,103
end
call s1
print *,'pass'
end

interface 
subroutine s (n)
character,value:: n
end subroutine
subroutine t (n) bind(c)
character,value:: n
end subroutine
end interface
character::v='1'
call s(v)
if (v/='1') print *,201
call t(v)
if (v/='1') print *,202

print *,'pass'
end
subroutine s (n)
entry t(n) bind(c)
character,value:: n
if (n/='1') print *,101
n='2'
end subroutine

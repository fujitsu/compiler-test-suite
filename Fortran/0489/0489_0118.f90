subroutine s1
character,parameter::k='1'
character:: n,kf*2
kf(n)=n//k
if (kf('2')/='21') print *,101
end
subroutine s2
integer,parameter::k=2
kf(n)=n+k
if (kf(2)/=4) print *,102
end
call s1
call s2
print *,'pass'
end

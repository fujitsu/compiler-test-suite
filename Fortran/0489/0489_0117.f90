subroutine s1
character,parameter::k(2)=['1','2']
character:: n,kf*2
kf(n)=n//k(2)
if (kf('2')/='22') print *,101
end
subroutine s2
integer,parameter::k(2)=[1,2]
kf(n)=n+k(2)
if (kf(2)/=4) print *,101
end
call s1
call s2
print *,'pass'
end

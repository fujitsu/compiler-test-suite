subroutine s1(k)
 character( len=k )::a1

if (a1%len  /=3) print *,101
if (len(a1)  /=3) print *,102
end
call s1(3)
print *,'pass'
end

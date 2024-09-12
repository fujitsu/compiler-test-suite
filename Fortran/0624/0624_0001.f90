subroutine s1(i,k)
character(k)::a(i)
if (len(maxval(a))/=k)print *,i,k
end
call s1(0,0)
print *,'pass'
end

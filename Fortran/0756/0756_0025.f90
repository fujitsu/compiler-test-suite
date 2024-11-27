subroutine s1
parameter(k=16251 )
character(k,4)::a01=repeat(4_'a',k) 
if (a01/=repeat(4_'a',k)) print *,101
end
call s1
print *,'pass'
end

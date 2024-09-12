subroutine s1
integer::a(10)=1
k=1
a(k+2:K+3)=2
if (any(a/=[1,1,2,2,1,1,1,1,1,1])) print *,101
end
call s1
print *,'pass'
end


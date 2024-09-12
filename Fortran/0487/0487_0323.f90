subroutine s7(n)
k=n()
if (k/=1)print *,104,k
call ss(n)
end
external m
call s7(m)
print *,'pass'
end
subroutine ss(kk)
if (kk()/=1)print *,201,kk()
end
function m()
m=1
end

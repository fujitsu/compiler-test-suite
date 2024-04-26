subroutine s1(d)
procedure()::d
call ss(d)
end
subroutine s2(d)
procedure(integer)::d
call ss(d)
end
subroutine s3(d)
external       ::d
integer::d
call ss(d)
end
subroutine s4(d)
integer::d
call ss(d)
k=d()
if (k/=1)print *,101,k
end
subroutine s5(d)
integer::d
k=d()
if (k/=1)print *,102,k
call ss(d)
end
subroutine s6(n)
call ss(n)
k=n()
if (k/=1)print *,103,k
end
subroutine s7(n)
k=n()
if (k/=1)print *,104,k
call ss(n)
end
subroutine s8()
procedure(integer)::m
call ss(m)
end
subroutine s9()
external       ::m
integer::m
call ss(m)
end
subroutine sa()
procedure()::m
call ss(m)
end
subroutine sb()
external       ::m
call ss(m)
end
external m
call s1(m)
call s2(m)
call s3(m)
call s4(m)
call s5(m)
call s6(m)
call s7(m)
call s8()
call s9()
call sa()
call sb()
print *,'pass'
end
subroutine ss(kk)
if (kk()/=1)print *,201,kk()
end
function m()
m=1
end





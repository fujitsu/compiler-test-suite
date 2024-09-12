subroutine s1
integer,pointer::p=>null()
k1=1;k2=100
call ss(p)
contains
subroutine ss(n)
integer,optional::n
k1=1;k2=200
if (present(n)) print *,200
if (max(K1,k2,n)/=200) print *,201
end subroutine
end
call s1
print *,'pass'
end

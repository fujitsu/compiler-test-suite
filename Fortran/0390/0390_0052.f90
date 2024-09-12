subroutine s1
integer,pointer::p(:)
interface
  subroutine ss(n)
  integer,optional::n(2)
  end subroutine
end interface
p=>null()
call ss(p)
end
subroutine ss(n)
integer,optional::n(2)
integer::k2(2)
k1=1;k2=200
if (present(n)) print *,200
if (any(max(K1,k2,n)/=200)) print *,201
end subroutine
call s1
print *,'pass'
end

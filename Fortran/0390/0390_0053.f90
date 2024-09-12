subroutine s1
integer,allocatable::p
interface
  subroutine ss(n)
  integer,optional::n
  end subroutine
end interface
call ss(p)
end
subroutine ss(n)
integer,optional::n
k1=1;k2=200
if (present(n)) print *,200
if (max(K1,k2,n)/=200) print *,201
end subroutine
call s1
print *,'pass'
end

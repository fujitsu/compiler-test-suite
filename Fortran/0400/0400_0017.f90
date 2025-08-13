module m1
contains
subroutine ss()
procedure(dim):: pl1
interface gnr
  procedure :: pl1
end interface
contains
  subroutine xl1(k1,kk1)
    integer(1)::k1,kk1
    if (k1/=1) print *,111
    if (kk1/=1) print *,112
    write(16,*) 111
  end subroutine
end subroutine
  subroutine xl2(k1,kk1)
    integer(1)::k1,kk1
    if (k1/=1) print *,111
    if (kk1/=1) print *,112
    write(16,*) 111
  end subroutine
end
use m1
call ss
print *,'pass'
end



module m1
contains
subroutine ss()
procedure(xl1),pointer:: pl1
interface gnr
  procedure :: pl1
end interface
pl1=>xl1
call gnr(1_1,1_1)
contains
  subroutine xl1(k1,kk1)
    integer(1)::k1,kk1
    if (k1/=1) print *,111
    if (kk1/=1) print *,112
    write(1,*) 111
  end subroutine
end subroutine
end
use m1
call ss
print *,'pass'
end



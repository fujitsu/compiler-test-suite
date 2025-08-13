module m0
 contains 
  subroutine xi1(k1)
    integer(1)::k1
    if (k1/=1) print *,101
    write(4,*) 101
  end subroutine
  subroutine xi2(k1)
    integer(2)::k1
    if (k1/=2) print *,102
    write(4,*) 102
  end subroutine
end
module m1
use m0
contains
subroutine ss(pp1,pp2)
procedure(xi2):: pp2
procedure(xi1):: pp1
interface gnr
  procedure :: pp1,pp2
end interface
call gnr(1_1)
call gnr(2_2)
end subroutine
end
module m2
use m1
private
public:: ss
end
subroutine s1
use m0
use m2
procedure(xi1),pointer:: pp1
procedure(xi2),pointer:: pp2
pp1=>xi1
pp2=>xi2
call ss(pp1,pp2)
call chk
contains
subroutine chk
rewind 4
read(4,*) i;if (i/=101) print *,90001
read(4,*) i;if (i/=102) print *,90002
read(4,*,end=1) i
print *,9999
1 return
end subroutine
end
call s1
print *,'pass'
end



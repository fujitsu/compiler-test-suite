module m0
 contains 
  subroutine xi1(k1)
    integer(1)::k1
    if (k1/=1) print *,101
    write(2,*) 101
  end subroutine
end
module m1
use m0
contains
subroutine ss(pp1)
procedure(xi1),pointer:: pp1
interface gnr
  procedure :: pp1
end interface
call pp1(1_1)
call gnr(1_1)
end subroutine
end
module m2
use m1
private
public:: gnr,ss
end
subroutine s1
use m0
use m2
procedure(xi1),pointer:: pp1
pp1=>xi1
call ss(pp1)
call chk
contains
subroutine chk
rewind 2
read(2,*) i;if (i/=101) print *,90001
read(2,*) i;if (i/=101) print *,90002
read(2,*,end=1) i
print *,9999
1 return
end subroutine
end
call s1
print *,'pass'
end



module mod
contains
 subroutine s1(iii)
  integer iii,jjj
  value :: iii,jjj
    iii=100
    return
  entry e2(jjj)
    jjj=200
    return
  end subroutine
end
use mod
integer :: p1
p1 =0
call e2(p1)

print *,'pass'
end

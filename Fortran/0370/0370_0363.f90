
module mod
contains
  recursive subroutine sub()
    procedure(sub),pointer :: p1=>sub
    procedure(ent),pointer :: p2=>ent
    integer,save :: ii = 0
    
    entry ent()
    
    if (ii.eq.5) return
    ii = ii + 1

    print *, "call p1"
    call p1
    print *, "call p2"
    call p2
  end subroutine sub
end module mod

use mod
call sub
end

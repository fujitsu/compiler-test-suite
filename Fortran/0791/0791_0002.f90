module xxx
  INTERFACE
     module subroutine sub
     END subroutine
  END INTERFACe
end
submodule(xxx)smoda
contains
module subroutine sub
entry ent
print *,'sub'
end
end

use xxx
call sub
print *,'pass'
end

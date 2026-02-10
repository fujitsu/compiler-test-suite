module mod
contains
  subroutine sub
  entry ent
  end subroutine sub
end 

subroutine esub
use mod
call sub
return 
entry eent
call ent
end 

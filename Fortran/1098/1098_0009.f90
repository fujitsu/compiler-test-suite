module mod
interface
module subroutine a()
end
end interface
end

submodule (mod) smod
contains
subroutine x1
entry xx1
entry xx2
end
module procedure a
!!entry b
call x1
call x2
call xx1
call xx2
call xx12
call xx22
end 
subroutine x2
entry xx12
entry xx22
end
end

use mod
call a
print *,'sngg421h : pass'
end


module mod
interface
module subroutine sub_1()
end subroutine
end interface
integer::k
end
module mod2
use mod
integer::kk
end

submodule (mod) smod1
contains
subroutine k1()
end subroutine  
end

submodule (mod2) smod2
contains
subroutine    kk1()
end subroutine  
end

use mod
print *,'pass'
end


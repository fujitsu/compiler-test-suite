module mod
interface
 module subroutine aaa1
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
end 
subroutine sss()
     call aaa1
end
end


use mod
 call    aaa1()
print *,'sngg619h : pass'
end


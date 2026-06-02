module mod
interface
 module subroutine aaa1() 
end
end interface
end

submodule (mod) smod
contains
subroutine sss()
    call        aaa1()
end
module procedure aaa1
write(1000,*) 999
end 
end


use mod
call aaa1
rewind 1000
read(1000,*)k
if (k/=999) print *,101
print *,'sngg627h : pass'
end


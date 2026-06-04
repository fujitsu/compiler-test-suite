module mod
interface
module function   aaa1()
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
aaa1=1
end 
end

print *,'sngg420h : pass'
end


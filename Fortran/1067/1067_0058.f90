module m1
implicit none
interface 
     module subroutine c
     end
end interface
interface gen
procedure::c
end interface
end 
submodule (m1) submod2
contains
  subroutine sub2()
  implicit none
  call gen()
  end 
module procedure c
end 
end submodule 

print *,'sngg461o : pass'
end

module m1
implicit none
interface 
     module character(k) function c(k)
     end
end interface
interface gen
procedure::c
end interface
end 
submodule (m1) submod2
contains
module procedure c
c='a'
end 
end submodule 
submodule (m1: submod2) ssmod
contains
  subroutine xsub2()
  implicit none
  if (gen(1)/='a') print *,8001
  end 
end

print *,'sngg484o : pass'
end

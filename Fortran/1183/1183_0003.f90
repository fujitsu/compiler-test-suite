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
interface 
     module integer(8) function d() 
     end
     module character(k) function w(k)
     end
end interface
interface gen2
procedure::w
end interface
contains
module procedure d
d=2 
end 
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
     module procedure  w
w='a'
     end
end

print *,'sngg483o : pass'
end

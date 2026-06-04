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
  subroutine sub2()
  implicit none
  character::cc
  cc=c  (1)
  write(14,'(a)') cc
  end
module procedure c
c='a'
end
end submodule

print *,'sngg459o : pass'
end

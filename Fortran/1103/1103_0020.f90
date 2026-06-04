module m
  implicit none
  interface
    module function   ksub(a) 
  implicit none
      integer :: a(2)
      integer :: ksub(size(a,dim=1))
    end 
  end interface
end

submodule(m)smod
contains
  module procedure ksub
    if (size(ksub) /= 2) print *,5
  end procedure
end

print *,'sngg493h : pass'
end

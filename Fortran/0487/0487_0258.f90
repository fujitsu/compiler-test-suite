module m1
integer:: x1
contains
end

module m2
integer:: x2
contains
subroutine sm2
contains
end
end

module m3
  integer x,y 
  interface
    module subroutine sub 
    end subroutine
  end interface
contains
end
submodule(m3) mm
    integer:: z,zz=1
contains
end

module m4
  integer x,y 
  interface
    module subroutine sub 
    end subroutine
  end interface
contains
end
submodule(m4) mm
    integer:: z,zz=1
contains
  module procedure sub 
    integer y
    if (x/=2) write(1,*) 101 
    if (y/=10) write(1,*)102
    if (z/=10) write(1,*)103
    if (zz/=1) write(1,*)104
  contains
  end procedure
end

subroutine sm3
contains
end

print *,'pass'
contains
end

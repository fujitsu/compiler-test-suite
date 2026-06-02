module m01
type x
   integer::x1=1
   integer,private::x2=2
end  type
interface
  module subroutine s
  end subroutine
  module subroutine s2
  end subroutine
end interface
private
public::s,s2

end
submodule (m01)  smod
type(x):: v
contains
 module subroutine s
    if (v%x1/=1) print *,101
    if (v%x2/=2) print *,102
 end subroutine
end
submodule (m01:smod)  smod2
end
submodule (m01:smod2)  smod3
end
submodule (m01:smod3)  smod4
type(x):: v
contains
 module subroutine s2
    if (v%x1/=1) print *,101
    if (v%x2/=2) print *,102
 end subroutine
end
use m01
call s
call s2
print *,'sngg118o : pass'
end

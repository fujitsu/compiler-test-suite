module m01
type x
   integer::x1=1
   contains
generic,private::gen=>z
    procedure        ::z
end  type
interface
  module subroutine s
  end subroutine
  module subroutine s2
  end subroutine
end interface
private
public::s,s2
contains
subroutine z(d,k)
class(x)::d
if (d%x1/=k) print *,1001
write(15,*)k
end subroutine
end
submodule (m01)  smod
type(x)::v
contains
 module subroutine s
    if (v%x1/=1) print *,101
call v%z(1)
 end subroutine
end
submodule (m01:smod)  smod2
end
submodule (m01:smod2)  smod3
end
submodule (m01:smod3)  smod4
end
submodule (m01:smod4)  smod5
type(x)::v
contains
 module subroutine s2
    if (v%x1/=1) print *,101
call v%z(1)
 end subroutine
end
use m01
call s
call s2
print *,'sngg123o : pass'
end

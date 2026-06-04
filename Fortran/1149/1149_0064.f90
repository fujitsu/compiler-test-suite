module m00
type x
   integer::x1=1
   contains
generic,private::gen=>z
    procedure        ::z
end  type
contains
subroutine z(d,k)
class(x)::d
if (d%x1/=k) print *,1001
write(16,*)k
end subroutine
end
module m11
use m00
end
module m12
use m11
end
module m01
use m12
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
print *,'sngg124o : pass'
end

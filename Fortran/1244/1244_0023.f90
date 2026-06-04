module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m

submodule(m)smod
contains
  module subroutine sub

procedure(x1),pointer::p1
procedure(x2)::g1
interface vvv
   procedure::p1,n1,vvv,n2,g1
end interface
p1=>x1
call vvv
rewind 3
read(3,*)n
if(n/=1) print *,'err'
contains
 subroutine n1()
  write(3,*)1
 end
 subroutine x1(k)
  write(3,*)k
 end
 subroutine x2(a)
  write(3,*)a
 end
 subroutine vvv(k,n)
  write(3,*)k-n
 end
 subroutine n2(k)
  integer(2)::k
  write(3,*)k
 end

  end
end
subroutine g1(a)
  write(3,*)k
end

use m
call sub
print *,'sngtin29:pass'
end

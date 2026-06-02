module m
  interface
     module subroutine sub
     end subroutine sub
  end interface
end module m

submodule(m)smod
contains
  module subroutine sub
procedure(x2)::g1
procedure(x1),pointer::p1
interface vvv
   procedure::vvv,p1,n1,n2,g1
end interface
p1=>x1
block
call vvv
end block
call vvv
rewind 4
read(4,*)n
if(n/=1) print *,'err'
contains
 subroutine n1()
  write(4,*)1
 end
 subroutine x1(k)
  write(4,*)k
 end
 subroutine x2(a)
  write(4,*)a
 end
 subroutine vvv(k,n)
  write(4,*)k-n
 end
 subroutine n2(k)
  integer(2)::k
  write(4,*)k
 end

  end
end
subroutine g1()
end
use m
implicit none
integer::ii
interface vvv
procedure vvv
end interface
call sub
call vvv(ii)
if(ii/=-1) print *,'err'
print *,'sngtin30:pass'
contains
subroutine vvv(i)
integer::i
i=-1
end subroutine vvv
end

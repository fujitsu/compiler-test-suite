module m
  interface
     module subroutine sub()
     end subroutine
     module subroutine sub1(l)
       integer::l
     end subroutine
     module subroutine sub2(k)
       integer::k
     end subroutine
  end interface
  interface aaa
     procedure:: sub1
  end interface
contains
  subroutine bbb
interface ggg
procedure bbb
end interface
  end subroutine bbb
end module m
submodule(m)smod2
contains
  module subroutine sub()
  end subroutine
end
submodule(m)smod1
contains
  module subroutine sub1(l)
    integer::l
    l=-100
  end subroutine
end

submodule(m:smod2)smod3
contains
  module subroutine sub2(k)
    integer::k
    k=-10
  end subroutine
end
use m
integer::j,k,l
interface ddd
   procedure:: sub2
end interface
interface fff
procedure eee,sub
end interface
call aaa(l)
call ddd(k)
call fff(j)
if(j/=-1) print *,'err'
if(k/=-10) print *,'err'
if(l/=-100) print *,'err'
print *,'sngtin13:pass'
contains
  subroutine eee(i)
    i=-1
  end subroutine eee
end

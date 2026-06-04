module m0
  contains
    subroutine w(n)
      print *,n
    end
end
module m1
use m0
  interface
    module subroutine ss(p)
       procedure(w)::p
    end
  end interface
end

submodule (m1) smod
contains
    module subroutine ss(p)
       procedure(w)::p
  procedure(p),pointer::p1
end
end

print *,'sngg736h : pass'
end

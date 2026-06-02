module m1
  interface
    module subroutine ss(p)
       procedure(w)::p
    end
  end interface
  contains
    subroutine w(n)
      print *,n
    end
end

submodule (m1) smod
contains
    module subroutine ss(p)
       procedure(w)::p
  procedure(p),pointer::p1
end
end

print *,'sngg735h : pass'
end

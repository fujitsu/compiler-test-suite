module m1
  interface
    module subroutine ss(p,q)
       interface
         subroutine w
         end
         subroutine q(k)
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
end

print *,'sngg708h : pass'
end


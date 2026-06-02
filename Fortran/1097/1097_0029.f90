module m1
  interface
    module subroutine ss(p)
       interface
         subroutine w
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
end

print *,'sngg709h : pass'
end


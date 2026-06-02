module m1
  interface
    module subroutine ss(w)
       interface
         subroutine w
         end
       end interface
    end
  end interface
end

submodule (m1) smod
contains
 module   procedure  ss
  procedure(w),pointer::p1
p1=>w
 end
end


print *,'sngg739h : pass'
end

module m1
  interface
    module real function ss(p)
     implicit none
       interface
         function w(n)
         end
       end interface
       procedure(w),pointer::p
    end
  end interface
end

submodule (m1) smod
     implicit none
contains
 module   procedure  ss
if ( p(2)/=2) print *,601
ss=1
 end
end

print *,'sngg742h : pass'
end

module m1
       implicit none
  interface
    real module function ss(p)
       implicit none
       procedure(w),pointer::p
    end
  end interface
  contains
    real function w(n)
     integer::n
      print *,n
      w=n
    end
end

submodule (m1) smod
       implicit none
contains
 module   procedure  ss
       implicit none
interface gen
   procedure::p
end interface
if ( p(2)/=2) print *,801
if ( gen(2)/=2) print *,803
ss=1
 end
end

print *,'sngg747h : pass'
end

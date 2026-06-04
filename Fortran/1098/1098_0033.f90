module m1
       implicit none
  interface
    real module function ss(p)
       implicit none
       procedure(abs),pointer::p
    end
  end interface
end

submodule (m1) smod
       implicit none
contains
 module   procedure  ss
       implicit none
interface gen
   procedure::p
end interface
if ( p(.2)/=.2) print *,801
if ( gen(.2)/=.2) print *,803
ss=1
 end
end

use m1
       procedure(abs),pointer::p
p=>abs
if ( ss(p  )/= 1) print *,301

print *,'sngg751h : pass'
end

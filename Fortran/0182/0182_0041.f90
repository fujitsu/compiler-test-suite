module m1
 integer::n=2
 interface
    module function   if() result(x)
      integer:: x(n)
    end 
  end interface
end
submodule (m1) mm1
contains
  module procedure if
   x=[1,2]
  end
end
use m1
   if (any(if()/=[1,2])) print *,101
   if (kind(if())/=4) print *,201
print *,'pass'
end

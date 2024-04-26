module m1
 interface
    module function   if() result(x)
      integer:: x(2)
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
   if (kind(if())/=8) print *,201
print *,'pass'
end

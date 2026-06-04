module m1
   integer::x
   type y
     integer::xx
   end type
   type (y)::v
   interface 
     module function f(n1)
     end 
   end interface
end
module m2
use m1
end
use m2
print *,'sngg724h : pass'
end

    

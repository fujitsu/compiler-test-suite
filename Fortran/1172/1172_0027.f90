module m
interface
module function x()
end
end interface
integer::kkk=0
end

submodule (m) p
interface
module function k()
end
end interface
end

submodule (m:p) w
contains
    module function k ()
      kkk=kkk+1
       if (kkk==0) then
           if(x()/=1) print *,101
       end if
      k=1
    end 
end

submodule (m:p) z
contains
    module function  x()
           if(k()/=1) print *,121
        x=1
    end 
end

use m
           if(x()/=1) print *,201
print *,'sngg089j : pass'
end


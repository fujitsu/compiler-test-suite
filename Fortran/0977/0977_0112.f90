module m1
contains
 function fun(iii) result (ret)
   integer :: ret
   integer,value :: iii
   integer :: jjj
   ret = iii
   return
   entry ent(jjj) result (ret)
   ret = jjj
 end function
end
use m1
if (fun(1)/=1)write(6,*) "NG"
if (ent(2)/=2)write(6,*) "NG"
print *,'pass'
end


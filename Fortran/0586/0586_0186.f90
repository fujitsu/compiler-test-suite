         integer,external:: f2 
         integer::x
         procedure(integer),pointer :: pp=>f2
         if(associated(pp).neqv..true.)print*,"102"
         x =pp()
         if(x.ne.30)print*,"101",x
         end
         function f2()
         integer::f2
         print*,"PASS"
         f2 =30
         end


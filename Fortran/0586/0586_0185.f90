         integer,external :: f2
         procedure(integer),pointer :: pp=>f2
         integer::k
         if(associated(pp).neqv..true.)print*,"101"
         k=pp()
         if(k.ne.12)print*,"101"
         end
         function f2() result(r)
         integer::r
         r=12
         print*,"PASS"
         end


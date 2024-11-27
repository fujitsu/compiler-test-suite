         external :: f2
         procedure(),pointer :: pp=>f2
         integer::k
         if(associated(pp).neqv..true.)print*,"101"
         k=pp()
         end
         function   f2()
         f2=0
         print*,"PASS"
         end


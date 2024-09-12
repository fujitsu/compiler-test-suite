         external :: f2
         procedure(),pointer :: pp=>f2
         integer::k
         pp=>f2
         if(associated(pp).neqv..true.)print*,"101"
         call pp()
         end
         subroutine f2()
         print*,"PASS"
         end


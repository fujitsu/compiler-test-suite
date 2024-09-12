   external :: f2
         procedure(),pointer :: pp=>f2
         if(associated(pp).neqv..true.)print*,"101"
         if(pp().ne.20)print*,"101"
         end
         function f2()
         real::f2
         f2 =20
         print*,"PASS"
         end


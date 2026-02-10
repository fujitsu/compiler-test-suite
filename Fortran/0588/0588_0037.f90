   external :: ifun
   external :: ised
        real::ifun
        real::ised
        type ty1
         procedure(real) ,nopass,pointer ::p5
         procedure(real) ,nopass,pointer ::p7 => ifun
        end type
        type (ty1) ::str2 = ty1(p5= ised)
        if(associated(str2%p5).neqv..true.)print*,"101"
        if(associated(str2%p7).neqv..true.)print*,"102"
        if(str2%p7().ne.1)print*,"103"

        if(str2%p5().ne.1)print*,"104"
        print*,"PASS"
       end
      function ifun()
        entry ised()
        real::ifun
        real::ised
        ifun=1
        return
      end function


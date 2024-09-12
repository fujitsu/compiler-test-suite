        
        external :: ifun
        external :: ised
         procedure() ,pointer ::pt4 => ifun
         procedure(),pointer ::pt5 => ised
        type ty1
         procedure() ,nopass,pointer ::p5 => ised
         procedure() ,nopass,pointer ::p7 => ifun
        end type
        type (ty1) ::str
        type (ty1) ::str2
        str%p7=>ifun
        str%p5 => ised
        pt5 => ised
        if(associated(str2%p5).neqv..true.)print*,"101"
        if(associated(str2%p7).neqv..true.)print*,"102"
        if(associated(str2%p7).neqv..true.)print*,"103"
        if(associated(pt4).neqv..true.)print*,"104"
        if(associated(pt5).neqv..true.)print*,"105"
        print*,"PASS"
       end
      function ifun()
        entry ised()
        ifun=1
      end function


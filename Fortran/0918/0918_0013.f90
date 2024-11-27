   external :: ifun
   external :: ised
         procedure(real) ,pointer ::pt4 => ifun
         procedure(real), pointer ::pt5 => ised
        type ty1
         procedure(real) ,nopass,pointer ::p5 => ised
         procedure(real) ,nopass,pointer ::p7 => ifun
        end type
        type (ty1) ::str
        type (ty1) ::str2
        str%p7=>ifun
        str%p5 => ised
        pt5 => ised
        pt4 => ifun
        if(associated(str2%p5).neqv..true.)print*,"101"
        if(associated(str2%p7).neqv..true.)print*,"102"
        if(associated(str2%p7).neqv..true.)print*,"103"
        if(associated(pt4).neqv..true.)print*,"104"
        if(associated(pt5).neqv..true.)print*,"105"
        print*,"PASS"
       end
      function  ifun(a)
      integer::ifun,a
        entry ised(a)
        ifun=1
      end function


     external :: ifun
     external :: func
     external :: ised
        intrinsic :: sin
        type ty1
         procedure() ,nopass,pointer ::p5 => ised
         procedure() ,nopass,pointer ::p6 => func
         procedure() ,nopass,pointer ::p7 => ifun
        end type
        type (ty1) ::str2
        if(associated(str2%p5).neqv..true.)print*,"102"
        if(associated(str2%p6).neqv..true.)print*,"103"
        if(associated(str2%p7).neqv..true.)print*,"106"
        print*,"pass"
       end

 function ifun()
        entry ised()
       ifun=1
        end function
function func()
func=1
        end function

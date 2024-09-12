module m
        integer,save ,target :: ttt(4)=[1,2,3,4]
         type ty1
           integer,private::t1=30
           integer,pointer,private :: ppp(:)=>ttt
           integer,pointer :: ppp2(:)=>ttt
           procedure(fun1),pointer,nopass::ptr1=>fun1
        end type
        type(ty1),target::obj
        private fun1
        contains
        function fun1() result(r)
         integer::r
         r =30
        end function
        end module
        USE m
        type(ty1),target::obj2
        if(associated(obj%ppp2).neqv..true.)print*,"101"
        if(associated(obj2%ppp2).neqv..true.)print*,"102"
        obj2%ppp2 = [11,12,13,14]
        if(any(obj%ppp2.ne.[11,12,13,14]))print*,"103" 
        if(obj2%ptr1().ne.30)print*,"101"
        print*,"PASS"
        end


module m
        integer,save ,target :: ttt(4)=[1,2,3,4]
         type ty1
            private
            integer::t1=30
            character::t2='c'
            integer,pointer,public :: ppp(:)=>ttt
        end type
        type(ty1),target::obj
        public obj
        end module
        USE m
        type(ty1),target::obj2
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(any(obj%ppp.ne.[1,2,3,4]))print*,"102"
        if(associated(obj2%ppp).neqv..true.)print*,"103"
        if(any(obj2%ppp.ne.[1,2,3,4]))print*,"104"
        print*,"PASS"
        end


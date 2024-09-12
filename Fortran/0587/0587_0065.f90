         module m
         private
        integer,save ,target :: ttt(4)=[1,2,3,4]
        type ty2
          integer:: ttt(4)=[1,2,3,4]
          character*3::chtar(3,3) ="abc"
        end type
          character*3,target::chtar2(3) ="abc"
          character*3,target::chtar3 ="abc"
        type(ty2),target::obj
         type ty1
           integer,pointer :: ppp(:)=>ttt
           integer,pointer :: ppp2=>ttt(1)
           integer,pointer :: ppp3(:)=>ttt(1:4:2)
           character*2,pointer::ptr4(:,:)=>obj%chtar(1:3:2,1:3:2)(1:2)
           character*2,pointer::ptr5 => obj%chtar(1,1)(1:2)
           character*2,pointer::ptr6 => chtar2(1)(1:2)
           character*2,pointer::ptr7 => chtar3(1:2)
        end type
        end module
       module m2
        use m
        integer,save ,target :: ttt(4)=[11,12,13,14]
         type ty1
           integer,pointer :: ppp(:)=>ttt
        end type
        end module
        use m2
        type(ty1),target::obj
        integer,pointer::ptr(:)=>ttt
        if(associated(obj%ppp).neqv..true.)print*,"101"
        if(any(obj%ppp.ne.[11,12,13,14]))print*,"102"
        ptr = [111,112,113,114]
        if(any(ttt.ne.[111,112,113,114]))print*,"104"
        if(any(obj%ppp.ne.[111,112,113,114]))print*,"105"
        print*,"pass"
        end


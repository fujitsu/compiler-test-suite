       module m
        type ty1
           integer::arr(2)=[10,11]
           integer::arr2(2)=[12,14]
        end type
        type ty3
          type(ty1)::obj
          type(ty1)::obj2
        end type
         type(ty3),target::obj2
        type ty2
          integer,pointer::ptr3=>obj2%obj2%arr(1)
          integer,pointer::ptr4=>obj2%obj%arr(2)
          integer,pointer::ptr5=>obj2%obj2%arr2(1)
          integer,pointer::ptr6=>obj2%obj%arr2(2)
        end type
        
       end module
       use m
        type(ty2)::obj5  
        if(obj5%ptr3.ne.10)print*,"101"
        if(obj5%ptr4.ne.11)print*,"102"
        if(obj5%ptr5.ne.12)print*,"103"
        if(obj5%ptr6.ne.14)print*,"104"
        print*,"pass"
        end


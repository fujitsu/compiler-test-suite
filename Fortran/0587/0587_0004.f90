       module m
        type ty1
           integer::ttt3=10
           real::ttt4=30
           character*3::arr(3) = ['abc','pqr','str']
        end type
        type(ty1),target::obj2
       end
       module m2
       use m, only:obj2
        type ty2
          real,pointer :: ppp3=>obj2%ttt4
          integer,pointer :: ppp4=>obj2%ttt3
          character*2,pointer::ptr3(:)=>obj2%arr(1:3:2)(1:2)
          character*1,pointer::ptr4(:)=>obj2%arr(1:3:1)(1:1)
        end type
        
       end module
       use m2
        type(ty2)::obj5
        if(associated(obj5%ppp3).neqv..true.)print*,"103"
        if(obj5%ppp3.ne.30)print*,"201"       
        if(obj5%ppp4.ne.10)print*,"202"       
        if(any(obj5%ptr3.ne.['ab','st']))print*,"203"
        if(any(obj5%ptr4.ne.['a','p','s']))print*,"203"
        print*,"pass"
        end


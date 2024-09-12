       module m
        type ty1
           character*3::arr(3) = ['abc','pqr','str']
        end type
        type(ty1),target::obj2
        type ty2
          character*2,pointer::ptr3(:)=>obj2%arr(1:3:2)(1:2)
          character*1,pointer::ptr4(:)=>obj2%arr(1:3:1)(1:1)
        end type
        
       end module
       use m
        type(ty2)::obj5
        if(any(obj5%ptr3.ne.['ab','st']))print*,"203"
        if(any(obj5%ptr4.ne.['a','p','s']))print*,"204"
        print*,"pass"
        end


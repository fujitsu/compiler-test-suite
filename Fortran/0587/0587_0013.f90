       module m
        complex,target::ttt5(2) =[(11,12),(14,20)]
        type ty1
           real::r1=30
           complex::ttt2(2) =[(11,12),(14,20)]
           complex::ttt3(2) =[(31,32),(94,90)]
           complex::ttt4(3,3)=reshape([(31,32),(94,90),(1,2),(2,3),(4,5),(7,8),(8,7),(9,12),(32,34)],[3,3])
        end type
        type(ty1),save,target::obj2
        type ty2
          real,pointer::ptr5=>obj2%ttt2(2)%re
          real,pointer::ptr7=>obj2%ttt3(2)%re
          real,pointer::ptr8=>obj2%r1
          real,pointer::ptr9(:,:)=>obj2%ttt4(1:3:1,1:3:1)%im
          real,pointer::ptr10=>ttt5(1)%re
          real,pointer::ptr11(:,:)=>obj2%ttt4(1:3:2,1:3:2)%re
        end type
        end module
        use m
        type(ty2)::obj5
        if(obj5%ptr5.ne.14)print*,"101"
        if(obj5%ptr7.ne.94)print*,"102"
        if(obj5%ptr8.ne.30)print*,"104"
        if(any(obj5%ptr11.ne.reshape([31,1,8,32],[2,2])))print*,"109"
        obj5%ptr11 = reshape([311,11,81,321],[2,2])
        if(any(obj2%ttt4.ne.reshape([(311,32),(94,90),(11,2),(2,3),(4,5),(7,8),(81,7),(9,12),(321,34)],[3,3])))print*,"109"
        print*,"PASS"
        end


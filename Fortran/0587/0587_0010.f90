       module m
       complex,target::ttt1(5)=[(10,20),(11,21),(12,22),(13,23),(14,24)]
       type ty
         real,pointer::ptr(:)=>ttt1(1:5:1)%re
         real,pointer::ptr2(:)=>ttt1(1:5:2)%im
       end type
       type(ty)::obj2
       type ty2
        type(ty)::obj3
       end type
       type(ty2)::obj4
        end module
        use m
        type(ty)::obj
         if(any(ttt1%re.ne.obj%ptr))print*,"101"
         if(any(ttt1(1:5:2)%im.ne.obj%ptr2))print*,"108"
         if(any(ttt1%re.ne.obj2%ptr))print*,"109"
         if(any(ttt1(1:5:2)%im.ne.obj2%ptr2))print*,"102"
         if(any(ttt1%re.ne.obj4%obj3%ptr))print*,"103"
         if(any(ttt1(1:5:2)%im.ne.obj4%obj3%ptr2))print*,"104"
         obj2%ptr = [31,32,33,34,35]
         obj2%ptr2 = [51,52,53]
         if(any(ttt1.ne.[(31,51),(32,21),(33,52),(34,23),(35,53)]))print*,"203"
        print*,"PASS"
        end


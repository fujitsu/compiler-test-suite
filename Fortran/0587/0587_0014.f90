       module m
       complex,target::ttt1(5)=[(10,20),(11,21),(12,22),(13,23),(14,24)]
       complex,parameter::x=(1,1)
       type ty
         real,pointer::ptr=>ttt1(int(x%re))%re
       end type
       end module
       
       use m
        type(ty)::obj
        if(obj%ptr.ne.10)print*,"101"
        print*,"PASS"
        end


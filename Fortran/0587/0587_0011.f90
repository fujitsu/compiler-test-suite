       module m
        complex,target::ttt1(2,2,2)=reshape([(10,20),(11,21),(12,23),(13,24),(14,25),(15,26),(16,27),(17,28)],[2,2,2])
        type ty2
          real,pointer :: ppp1(:,:,:)=>ttt1(1:2:1,1:2:1,1:2:1)%re
          real,pointer :: ppp2(:,:,:)=>ttt1(1:2:2,1:2:2,1:2:2)%im
        end type
        
        end module
        use m
        type(ty2)::obj5
        if(any(ttt1(1:2:1,1:2:1,1:2:1)%re.ne.obj5%ppp1))print*,"101"
        if(any(ttt1(1:2:2,1:2:2,1:2:2)%im.ne.obj5%ppp2))print*,"102"
        obj5%ppp2=41
        if(ttt1(1,1,1).ne.(10,41))print*,"103", ttt1(1,1,1)
        print*,"PASS"
        end


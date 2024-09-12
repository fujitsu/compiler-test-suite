        module m
         type ty
           integer,pointer::ptr1
         end type
         type,extends(ty) :: tty
           integer,pointer::ptr2
         end type
        integer,target::t1 =30
        integer,target::t2 =20
        end module
       module m2
       use m
        type(tty),target,save :: trg2(3) = [tty(ty(t1),t1),tty(ty(t1),t1), tty(ty(t2),t1)]
       type ty3
         type(tty),pointer :: cptr2(:)
       end type
       type ty4
          type(ty3)::obj(5)= ty3(trg2)
       end type
       end module
 
       use m2
        type(ty4)::obj9
          if(associated(obj9%obj(1)%cptr2).neqv..true.)print*,"102"
          if(obj9%obj(1)%cptr2(1)%ptr2.ne.30)print*,"103"
          if(obj9%obj(1)%cptr2(1)%ptr1.ne.30)print*,"104"
          if(obj9%obj(1)%cptr2(2)%ptr1.ne.30)print*,"106"
          if(obj9%obj(1)%cptr2(3)%ptr1.ne.20)print*,"105"
          if(obj9%obj(1)%cptr2(3)%ptr2.ne.30)print*,"109"
        print*,"Pass"
        end


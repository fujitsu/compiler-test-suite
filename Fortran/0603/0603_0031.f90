         call sub(1)
         call sub(2)
         print*,"Pass"
         contains
         subroutine sub(dmy)
         type base
         integer :: ii=11
         end type
         type,extends(base) :: ty
         integer :: jj =20
         end type
        type tt
        class(base),pointer:: ccmp
        integer :: ii
        end type
        integer :: dmy
        type(tt),save :: obj(2)
        type(base),target,save :: base_obj
        data obj(2)%ccmp /base_obj/
        if(dmy == 1) then
        allocate(obj(1)%ccmp)
        allocate(ty::obj(2)%ccmp)
        end if
        if(dmy == 2) then
        select type(sel=>obj(2)%ccmp)
          type is(ty)
           if(sel%jj.ne.20)print*,"121"    
          type is(base)
               print*,"122"
          class default
              print*,"121"
        end select
        end if
        end
        end


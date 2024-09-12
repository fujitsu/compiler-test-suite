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
         type(tt),save :: obj(2)
         type(base),target,save :: base_obj
         class(base),pointer:: ccmp
         data obj(2)%ccmp,ccmp /base_obj, base_obj/

         call sub(1)
         call sub(2)
         print*,"Pass"
         contains
         subroutine sub(dmy)
         integer :: dmy
         if(dmy == 1) then
          allocate(obj(1)%ccmp)
          allocate(ty::obj(2)%ccmp)
          allocate(ty::ccmp)
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
         select type(sel=>ccmp)
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


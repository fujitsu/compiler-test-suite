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
         type,extends(ty) :: tyy
         integer :: kk =40
         end type
        type tt
        class(base),pointer:: ccmp
        integer :: ii
        end type
        integer :: dmy
        type(tt),save :: obj(2)
        type(tyy),target,save :: base_obj2
        data obj(2)%ccmp /base_obj2/
        data obj(1)%ccmp /base_obj2/
        if(dmy == 1) then
        allocate(ty::obj(2)%ccmp)
        select type(sel=>obj(1)%ccmp)
          type is(tyy)
           if(sel%kk.ne.40)print*,"121"    
          type is(base)
             print*,"122"
          class default
              print*,"121"
        end select
        end if
        if(dmy == 2) then
        select type(sel=>obj(2)%ccmp)
          type is(ty)
           if(sel%jj.ne.20)print*,"221"
          type is(base)
               print*,"322"
          type is(tyy)
               print*,"305"
          class default
              print*,"421"
        end select
        end if
        end
        end

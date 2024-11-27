     module m   
        type ty
           integer :: ii = 3
        end type
         
        type,extends(ty) :: tty
             integer :: jj = 5
        end type
        type,extends(tty) :: ttty
             integer :: kk = 9
        end type
        type(ttty),target,save :: trg2
        type ty2
          class(*),pointer::ptr =>trg2
        end type
        type ty3
           type(ty2)::obj(1)
        end type
     end module 
     use m
        type(ty3),pointer::obj3
        type(ty2),pointer::obj2
        call sub2()
        contains
        subroutine sub2()
          allocate(obj3)
          allocate(obj2)
          select type(A=>obj3%obj(1)%ptr)
          type is(ttty)
            if(A%jj.ne.5)print*,"422"
          class default
            print*,"224"
          end select 
          select type(A=>obj2%ptr)
          type is(ttty)
            if(A%kk.ne.9)print*,"222"
          class default
            print*,"244"
          end select
          print*,"PASS"
       end
       end


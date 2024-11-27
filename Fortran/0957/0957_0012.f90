         class(*),allocatable:: base
         allocate(base,source=12)
         call sub(base)
         contains
         subroutine sub(base) 
          class(*)::base
           select type (asc=>base)
           class default
              print*,"102"
           type is (integer)
             if(asc.ne.12)print*,"102"
           end select     
           print*,"pass"
        end
        end

         type ty
         integer :: jj
         end type
          class(*),allocatable:: ii(:)
          allocate(ty :: ii(2))
          select type (asc=>ii)
           type is (ty)
           select type(asc=>ii)
            type is (ty)
             asc%jj=2
             if(any(asc%jj.ne.2))print*,"102"
           end select     
           if(any(asc%jj.ne.2))print*,"101"
           select type (asc=>ii)
             type is (ty)
              if(any(asc%jj.ne.2))print*,"103"
             end select
           end select
           print*,"PASS"
        end
       
       


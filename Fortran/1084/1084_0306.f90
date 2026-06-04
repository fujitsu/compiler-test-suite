         type ty
         integer :: jj
         end type
          class(ty),allocatable:: ii(:)
          allocate( ii(2))
          select type (asc=>ii)
           type is (ty)
           select type(ii)
           type is (ty)
           ii%jj=2
           asc%jj=4 
           if(any(asc%jj.ne.4))print*,"102"
           end select     
           if(any(asc%jj.ne.4))print*,"101"
         end select
         print*,"PASS"
        end
       
       


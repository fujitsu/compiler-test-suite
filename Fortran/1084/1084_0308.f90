         type ty
         integer :: jj
         end type
          class(ty),allocatable:: ii(:)
          allocate( ii(2))
          select type (asc=>ii)
           type is (ty)
           ii(1)%jj=1
           select type(ii)
           type is (ty)
           if(ii(1)%jj.ne.1)print*,"112"
           ii(1)%jj=2
           asc(2)%jj=4
           if(any(asc%jj.ne.[2,4]))print*,"102"
           end select     
           if(any(asc%jj.ne.[2,4]))print*,"101"
         end select
         print*,"PASS"
        end
       
       


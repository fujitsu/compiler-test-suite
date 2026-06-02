         type ty
         integer :: jj
         end type
          class(*),allocatable:: ii(:)
          allocate(integer :: ii(2))
          select type (asc=>ii)
           type is (integer)
           select type(ii)
           type is (integer)
           ii=2
           asc=4
           if(any(asc.ne.4))print*,"102"
           end select     
           if(any(asc.ne.4))print*,"101"
         end select
         print*,"PASS"
        end
       
       


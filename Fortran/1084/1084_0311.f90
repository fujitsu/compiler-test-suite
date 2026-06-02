          class(*),allocatable:: ii(:)
          type ty
             class(*),allocatable:: ii(:)
          end type
          type(ty)::obj(2)
          allocate(integer :: ii(5))
          allocate(integer :: obj(1)%ii(5))
          select type (asc=>ii)
           type is (integer)
            asc([1,3,5]) =[1,2,3]
           select type(ii)
           type is (integer)
           if(any(ii([1,3,5]).ne.[1,2,3]))print*,"102"
           ii=2
           asc=4
           if(any(asc.ne.4))print*,"102"
           end select     
           if(any(asc.ne.4))print*,"101"
         end select
          select type (asc=>obj(1)%ii)
           type is (integer)
            asc([1,3,5]) =[1,2,3]
           select type(X=>obj(1)%ii)
             type is (integer)
               if(any(X([1,3,5]).ne.[1,2,3]))print*,"102"
               X=2
               asc=4
             if(any(asc.ne.4))print*,"102"
           end select     
           if(any(asc.ne.4))print*,"101"
         end select
         print*,"PASS"
        end
       
       


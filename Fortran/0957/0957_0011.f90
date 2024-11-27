        class(*),allocatable:: a(:)
        allocate(a(5),source=[1,2,3,4,5])
        select type (asc=>a(1))
           class default
              print*,"102"
           type is (integer)
             if(asc.ne.1)print*,"103"
           end select     
         print*,"PASS"
        end

          class(*),allocatable:: a
          class(*),allocatable:: b
          class(*),allocatable:: c
          allocate(a,source=12)
          allocate(b,source=12.0)
          allocate(c,source="abc")
          select type (asc=>a)
           type is (real)
             print*,"301"
           type is (integer)
             if(asc.ne.12)print*,"101"
           end select     
          select type (asc=>b)
           type is (integer)
             print*,"302"
           type is (real)
             if(asc.ne.12.0)print*,"102"
           end select     
           select type (asc=>c)
           class default
               print*,"901"
           type is (real)
               print*,"921"
           type is (integer)
               print*,"911"
           type is (character(len=*))
               if(asc(1:3).ne."abc")print*,"102"
           end select   
         print*,"PASS"
        end
       
       


          class(*),allocatable::a
          allocate(a,source=12)
          select type (asc=>a)
           type is (real)
             print*,"real"
           type is (integer)
             if(asc.ne.12)print*,"101"
          end select     
          print*,"PASS"
          end
       


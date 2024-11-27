          integer::i =1
          select type (asc=>fun())
           type is (real)
             print*,"301"
           type is (integer)
             if(asc.ne.10)print*,"101"
           end select     
          select type (asc=>fun2(i))
           type is (real)
             print*,"302"
           type is (integer)
             if(asc.ne.10)print*,"101"
           end select     
           i=2
           select type (asc=>fun2(i))
           class default
               print*,"901"
           type is (real)
             if(asc.ne.12)print*,"101"
           type is (integer)
               print*,"911"
           end select   
         print*,"PASS"
         contains
         function fun()
          class(*),allocatable:: fun
          allocate(fun,source=10)
         end function      
         function fun2(a)
          class(*),allocatable:: fun2
          integer::a
           if(a.eq.1)then
            allocate(fun2,source=10)
           endif
           if(a.eq.2)then
            allocate(fun2,source=12.0)
           endif
        end
        end
       
       


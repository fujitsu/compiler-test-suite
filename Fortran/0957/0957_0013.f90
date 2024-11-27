        type t1
         integer::a =1
        end type 
        type,extends(t1)::t2
          integer::b =2
         end type
        class(*),allocatable:: a(:,:)
        allocate(a(2,3),source=reshape([1,2,3,4,5,6],[2,3]))
        select type (asc=>a([1,2],[1,3]))
           class default
              print*,"102"
           type is (integer)
             if(any(asc.ne.reshape([1,2,5,6],[2,2])))print*,"103"
           end select     
         print*,"PASS"
        end

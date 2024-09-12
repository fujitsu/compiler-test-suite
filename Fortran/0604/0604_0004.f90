        type t1
         integer::a =1
        end type 
        type,extends(t1)::t2
          integer::b =2
         end type
        class(t1),allocatable:: a(:)
        allocate(t2::a(5))
        select type (asc=>a(1:5:2))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
                if(asc(1)%b.ne.2)print*,"101"
                if(asc(2)%b.ne.2)print*,"102"
                if(asc(3)%b.ne.2)print*,"103"
                if(any(shape(asc).ne.3))print*,"104"
                if(size(asc).ne.3)print*,"114"
           end select  
           select type (asc=>a(1:5:2))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
                asc(1)%a =12
                asc(2)%a =13
           end select  

           associate(asc=>(a(1:5:2)))
                if(asc(1)%a.ne.12)print*,"101"
                if(asc(2)%a.ne.13)print*,"102"
                if(asc(3)%a.ne.1)print*,"103"
                if(any(shape(asc).ne.3))print*,"104"
                if(size(asc).ne.3)print*,"214"
           end associate
         print*,"PASS"
        end

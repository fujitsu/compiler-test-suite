        type t1
         integer::a =1
        end type 
        type,extends(t1)::t2
          integer::b =2
         end type
        class(t1),allocatable:: a(:,:)
        allocate(t2::a(3,4))
        select type (asc=>a(1:3:1,1:4:1))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
             asc(1,1)%a =10
             asc(3,3)%a =11
             asc(1,3)%a =12
             asc(1,4)%a =13
             asc(3,1)%a =14
             asc(1,1)%b =110
             asc(1,2)%b =111
             asc(1,3)%b =112
             asc(1,4)%b =113
             asc(3,1)%b =114
         end select     
        
        select type (asc=>a(1:3:2,1:4:2))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
                if(asc(1,1)%a.ne.10)print*,"101",asc(1,1)%a
                if(asc(2,2)%a.ne.11)print*,"102"
                if(asc(1,2)%a.ne.12)print*,"103",asc(1,2)%a
                if(asc(1,1)%b.ne.110)print*,"201",asc(1,1)%a
                if(any(shape(asc).ne.[2,2]))print*,"214",shape(asc)
                if(any(ubound(asc).ne.[2,2]))print*,"204",ubound(asc)
                if(any(lbound(asc).ne.[1,1]))print*,"304",lbound(asc)
           end select     
         associate(asc=>a(1:3:2,1:4:2))
             if(any(shape(asc).ne.[2,2]))print*,"714",shape(asc)
             if(any(ubound(asc).ne.[2,2]))print*,"704",ubound(asc)
             if(any(lbound(asc).ne.[1,1]))print*,"704",lbound(asc)
         end associate
         print*,"PASS"
        end

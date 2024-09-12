        type t1
         integer::a =1
        end type 
        type,extends(t1)::t2
          integer::b =2
         end type
        class(*),pointer:: a(:)
        allocate(t2::a(5))
        select type (asc=>a(1:5:1))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
             asc(1)%a =10
             asc(2)%a =11
             asc(3)%a =12
             asc(4)%a =13
             asc(5)%a =14
             asc(1)%b =110
             asc(2)%b =111
             asc(3)%b =112
             asc(4)%b =113
             asc(5)%b =114
         end select     
        
        select type (asc=>a(1:5:2))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
                if(asc(1)%a.ne.10)print*,"101",asc(1)%b
                if(asc(2)%a.ne.12)print*,"102"
                if(asc(3)%a.ne.14)print*,"103"
                if(asc(1)%b.ne.110)print*,"201"
                if(asc(2)%b.ne.112)print*,"202"
                if(asc(3)%b.ne.114)print*,"203"
                if(any(shape(asc).ne.3))print*,"204"
                call sub(a)
           end select 
           call sub(a)
           print*,"PASS"
           contains 
            subroutine sub(aa)
            class(*)::aa(5)
           select type (asc=>aa(1:5:2))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
                if(asc(1)%a.ne.10)print*,"101",asc(1)%b
                if(asc(2)%a.ne.12)print*,"102"
                if(asc(3)%a.ne.14)print*,"103"
                if(asc(1)%b.ne.110)print*,"201"
                if(asc(2)%b.ne.112)print*,"202"
                if(asc(3)%b.ne.114)print*,"203"
                if(any(shape(asc).ne.3))print*,"209"
           end select 

            end subroutine
        end

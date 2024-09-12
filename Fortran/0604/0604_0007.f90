        type t1
         integer::a =1
        end type 
        type,extends(t1)::t2
          integer::b =2
         end type
        class(*),allocatable:: a(:)
        allocate(a(5),source=["abc","efg","lmn","klm","rst"])
        select type (asc=>a(1:5:1))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
              print*,"203"
           type is (character(len=*))
             asc(1) ="101"
             asc(2) ="112"
             asc(3)  ="123"
             asc(4) ="134"
             asc(5) ="146"
         end select     
        associate(X=>(a(1:5:2)))
                if(any(shape(X).ne.3))print*,"204"
                if(any(ubound(X).ne.3))print*,"304"
                if(any(lbound(X).ne.1))print*,"504"
                if(rank(X).ne.1)print*,"404"
        select type (asc=>a(1:5:2))
           class default
              print*,"102"
           type is (t1)
              print*,"103"
           type is (t2)
              print*,"203"
           type is (character(len=*))
                if(asc(1).ne."101")print*,"901"
                if(asc(2).ne."123")print*,"902"
                if(asc(3).ne."146")print*,"903"
                if(len(asc(1)).ne.3)print*,"904"
                if(len(asc(2)).ne.3)print*,"914"
                if(any(shape(asc).ne.3))print*,"204"
                if(any(ubound(asc).ne.3))print*,"304"
                if(any(lbound(asc).ne.1))print*,"504"
                if(rank(asc).ne.1)print*,"404"
           end select     
         end associate
         print*,"PASS"
        end

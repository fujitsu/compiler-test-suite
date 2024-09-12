        type t0
         integer::x=12
        end type
        type,extends(t0):: t1
          integer::a=10
        end type 
        type ty 
          class(t0),allocatable:: a(:,:)
        end type
        class(t1),allocatable:: a(:,:)
        type(ty)::obj(2)
        allocate(t1::obj(1)%a(5,5))
        allocate(t1::obj(2)%a(3,3))
        allocate(t1::a(3,3))
        select type (asc=>obj(1)%a(2,2))
           type is (t0)
              print*,"301"
           type is (t1)
             if(asc%a.ne.10)print*,"101"
             if(asc%x.ne.12)print*,"131"
           class default
              print*,"102"
        end select  
        associate (asc=>(obj(1)%a))
               if(any(asc%x.ne.12))print*,"171"
               if(any(shape(asc).ne.[5,5]))print*,"171"
        end associate
        select type (asc=>obj(1)%a)
           class is (t0)
             select type (asc=>obj(1)%a)
              type is (t0)
                 print*,"301"
              type is (t1)
               if(any(asc%a.ne.10))print*,"161"
               if(any(asc%x.ne.12))print*,"171"
               if(any(shape(asc).ne.[5,5]))print*,"171"
            end select    
             class default
              print*,"104"
        end select    
        select type (asc=>obj(1)%a(2,2))
           type is (t0)
              print*,"301"
           type is (t1)
             asc%x =23
             asc%a =45
           class default
              print*,"102"
        end select     
        select type (asc=>obj(1)%a(2,2))
           type is (t0)
              print*,"301"
           type is (t1)
             if(asc%a.ne.45)print*,"101"
             if(asc%x.ne.23)print*,"131"
           class default
              print*,"102"
        end select     
        select type (asc=>a(1,1))
           type is (t1)
             if(asc%a.ne.10)print*,"101"
             select type (asc=>obj(2)%a(1,1))
               type is (t0)
                 print*,"301"
               type is (t1)
                 if(asc%a.ne.10)print*,"101"
                 if(asc%x.ne.12)print*,"141"
               class default
                  print*,"102"
             end select     
           class default
              print*,"102"
           end select     
         print*,"PASS"
        end

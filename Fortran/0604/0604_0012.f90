        type t1
         integer::a=10
        end type 
        type,extends(t1)::t2
         integer::b=14
        end type 
         
        type ty 
          class(*),allocatable:: cptr(:,:)
          class(t1),pointer:: cptr2(:,:)
          class(*),pointer:: cptr3(:,:)
        end type
        type(ty)::obj
          class(*),allocatable:: base(:)
         type(t2),target::obj3(4,6)
         allocate(t1::obj%cptr(5,4))
         allocate(t2::obj%cptr2(2,3))
         allocate(t1::base(5))
         obj%cptr3=>obj3
         select type (asc=>obj%cptr(1,2))
           class default
              print*,"102"
           type is (t1)
             if(asc%a.ne.10)print*,"101"
           end select    
          select type (asc=>obj%cptr2(1,2))
           class default
              print*,"112"
           type is (t2)
             if(asc%b.ne.14)print*,"131"
           end select 
           select type (asc=>obj%cptr3)
           class default
              print*,"112"
           type is (t1)
              print*,"122"
           type is (t2)
             if(any(shape(asc).ne.[4,6]))print*,"561"
             if(any(ubound(asc).ne.[4,6]))print*,"562"
             if(any(lbound(asc).ne.[1,1]))print*,"563"
             if(asc(1,1)%b.ne.14)print*,"131"
           end select 
           select type (asc=>obj%cptr3(1,:))
           class default
              print*,"112"
           type is (t1)
              print*,"122"
           type is (t2)
             if(any(shape(asc).ne.[6]))print*,"5161"
             if(any(ubound(asc).ne.[6]))print*,"5162"
             if(any(lbound(asc).ne.[1]))print*,"5163"
             if(asc(1)%b.ne.14)print*,"131"
           end select 

           select type (asc=>base(3))
           class default
              print*,"102"
           type is (t1)
             if(asc%a.ne.10)print*,"102"
           end select     
           select type (asc=>base)
           class default
              print*,"102"
           type is (t1)
             if(asc(1)%a.ne.10)print*,"102"
             if(any(shape(asc).ne.[5]))print*,"511"
           end select     
           print*,"pass"
        end

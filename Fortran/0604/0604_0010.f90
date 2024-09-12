        type t1
         integer::a(1,2)=12
        end type 
        type ty 
          class(t1),allocatable:: a
          class(*),allocatable:: a2(:)
        end type
        type(ty)::obj
        integer :: arr(4)
        allocate(t1::obj%a)
        allocate(obj%a2(2),source=reshape([1,2],[2]))
         select type (asc=>obj%a2)
           class default
              print*,"102"
           type is (integer)
              arr(asc(1))=12
           end select     
           if(arr(1).ne.12)print*,"101"
          select type (asc=>obj%a)
           class default
              print*,"102"
           type is (t1)
              asc%a=reshape([14,15],[1,2])
           end select 
           associate(X=>obj%a,Y=>obj%a)
           if(any(X%a.ne.reshape([14,15],[1,2])))print*,"103"
           if(any(Y%a.ne.reshape([14,15],[1,2])))print*,"104", Y%a
           end associate
         print*,"PASS"
         end

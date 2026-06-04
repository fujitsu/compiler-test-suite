        type t1
         integer::a=12
        end type 
        type ty 
          class(t1),allocatable:: a
          class(*),allocatable:: a2(:)
        end type
        type(ty)::obj
        class(t1),allocatable:: a
        integer :: arr(4)
        allocate(t1::obj%a)
        allocate(obj%a2(2),source=[1,2])
        allocate(t1::a)
        a = obj%a
        select type (asc=>a)
           class default
              print*,"109"
           type is (t1)
              if(asc%a.ne.12)print*,"202"
              asc%a =2
              arr(asc%a)=13
          select type (asc=>obj%a2)
           class default
              print*,"102"
           type is (integer)
              arr(asc(1))=12
              call sub(asc)
           end select     
          end select     
           if(arr(1).ne.12)print*,"101"
           if(arr(2).ne.13)print*,"102"
         print*,"PASS"
           contains
          subroutine sub(d1)
            class(*) :: d1(:)
              select type (asc=>d1)
               class default
                  print*,"102"
               type is (integer)
                  if(asc(1).ne.1)print*,"202"
              end select
          end
         end

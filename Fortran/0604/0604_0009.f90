        type t1
         integer::a=2
        end type 
        type,extends(t1)::t2
          integer::b=14
        end type
        type ty 
          class(t1),allocatable:: a(:)
          class(*),allocatable:: a2(:)
        end type
        type(ty)::obj
        class(t1),allocatable:: a
        integer :: arr(4)
        allocate(t2::obj%a(2))
        allocate(obj%a2(2),source=[1,2])
        allocate(t1::a)
        select type (asc=>a)
           class default
              print*,"109"
           type is (t1)
              if(asc%a.ne.2)print*,"202"
           end select     
         select type (asc=>obj%a2)
           class default
              print*,"102"
           type is (integer)
              arr(asc(1))=12
              call sub(asc)
           end select    
          select type (asc=>obj%a)
           class default
              print*,"102"
           type is(t2)
              arr(asc(1)%a)=13
              call sub2(asc)
           end select     

           if(arr(1).ne.12)print*,"101"
           if(arr(2).ne.13)print*,"131"
         print*,"PASS"
           contains
          subroutine sub(d1)
            class(*) :: d1(:)
              select type (asc=>d1)
               class default
                  print*,"102"
               type is (integer)
                  if(asc(1).ne.1)print*,"212"
                  if(any(shape(asc).ne.2))print*,"203" 
              end select
          end
          subroutine sub2(d2)
            class(*) :: d2(:)
              select type (asc=>d2)
               class default
                  print*,"172"
               type is (t1)
                  print*,"108"
               type is (t2)
                  if(asc(1)%a.ne.2)print*,"232"
                  if(any(shape(asc).ne.2))print*,"2103" 
              end select
          end

         end

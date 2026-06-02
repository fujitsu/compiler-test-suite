         module m1
        
           type :: Configuration
              private
              class(*), pointer :: node_reference => null()
            contains
              ! Return Config reference at selector(s)
              procedure :: at
           end type
       
         type,extends(Configuration) :: UnlimitedVector
         end type
       
         contains
       
          function at(this,rc) result(q)
            type(Configuration),allocatable :: q
            class(*), intent(in) :: rc
            class(Configuration), target, intent(in) :: this
            select type (r => rc)
                type is (UnlimitedVector)
                    allocate(integer::q%node_reference)
                type is (Configuration)
                 print*,"201"
            end select
               
              
          end
       
       
           recursive subroutine write_one(unit, node, depth)
              integer, intent(in) :: unit
              class(*), intent(in) :: node
              integer, intent(in) :: depth
              integer :: i
              select type (q => node)
                type is (UnlimitedVector)
                !class is (Configuration)
                  call write_one(unit,q%at(i),depth+1)
                  if(unit.ne.10)print*,"201"
                 type is (Configuration)
                class default
                  print*,"901"
              end select
           end
        end
        use m1
           type(UnlimitedVector)::obj
           call write_one(10,obj,15)
           print*,"PASS"
        end


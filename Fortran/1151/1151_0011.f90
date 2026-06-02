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
          end

           recursive subroutine wwrite_one(unit, node, depth)
              integer, intent(in) :: unit
              class(*), intent(in) :: node
              integer, intent(in) :: depth
           end
  
           recursive subroutine write_one(unit, node, depth)
              integer, intent(in) :: unit
                class(*), intent(in) :: node
                class(*),pointer :: temp_node
              integer, intent(in) :: depth
              integer :: i
              type(Configuration) ::  ret
                select type (q => node)
                  type is (UnlimitedVector)
                !class is (Configuration)
                  call write_one(unit,q%at(i),depth+1)
                class default
                  iostat = -1
              end select
           end
        end
          print *,'pass'
          end


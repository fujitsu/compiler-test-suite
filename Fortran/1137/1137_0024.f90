        1 module m1
       
        3   type :: Configuration
        4      private
        5      class(*), pointer :: node_reference => null()
        6    contains
              ! Return Config reference at selector(s)
        8      procedure :: at
        9   end type
      
       11  type,extends(Configuration) :: UnlimitedVector
       12  end type
     
       14  contains
    
       16   function at(this,rc) result(q)
       17     type(Configuration),allocatable :: q
       18     class(*), intent(in) :: rc
       19     class(Configuration), target, intent(in) :: this
       20   end

       22    recursive subroutine wwrite_one(unit, node, depth)
       23       integer, intent(in) :: unit
       24       class(*), intent(in) :: node
       25       integer, intent(in) :: depth
       26    end
  
       28    recursive subroutine write_one(unit, node, depth)
       29       integer, intent(in) :: unit
                class(*),target, intent(in) :: node
                class(*),pointer :: temp_node
       31       integer, intent(in) :: depth
       32       integer :: i
       33       type(Configuration) ::  ret
                temp_node=>node
                select type (q => temp_node)
                  type is (UnlimitedVector)
                !class is (Configuration)
       37           call write_one(unit,q%at(i),depth+1)
       38         class default
       39           iostat = -1
       40       end select
       41    end
       42 end
          print *,'sngg779j : pass'
          end


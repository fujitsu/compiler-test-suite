module m1
    type :: derived_type
        integer :: x(3)
    contains        
        generic   :: get => get_array_index, get_whole_array
        procedure :: get_array_index
        procedure :: get_whole_array 
    end type derived_type
    contains
        function get_array_index( this, el ) result( p )
            implicit none
            class(derived_type), target :: this
            integer, intent(in) :: el
            integer, pointer :: p
            p => this%x(el)
        end function get_array_index
        
        function get_whole_array( this ) result( p )
            implicit none
            class(derived_type), target :: this            
            integer, pointer :: p(:) 
            p => this%x
        end function get_whole_array
end module m1

   use m1
   implicit none
   type(derived_type) :: myderived_type
   integer   :: y(3),arr(3),arr1(3)
   myderived_type%x = [1,2,3]
   y = [6,7,8]
   arr = [1,2,3]
   arr1 = [4,5,6]

   if(myderived_type%get(1) /= 1) print *,101
   if(myderived_type%get(2) /= 2) print *,102
   if( all(myderived_type%get() /=  arr)) print *,103
   myderived_type%get(1) = 4
   myderived_type%get(2) = 5
   myderived_type%get(3) = 6
   if(myderived_type%get(1) /= 4) print *,104
   if(myderived_type%get(2) /= 5) print *,105
   if( all(myderived_type%get() /=  arr1)) print *,106
   myderived_type%get() = y         
   if(myderived_type%get(1) /= 6) print *,107
   if(myderived_type%get(2) /= 7) print *,108
   if( all(myderived_type%get() /=  y)) print *,109
   print *,"Pass"
end



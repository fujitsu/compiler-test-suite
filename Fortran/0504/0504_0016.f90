program main
   implicit none 
   character(3) :: string_array(2) = ['foo', 'bar'] 
   call sub1(string_array(:)(1:2)) 
print *,'pass'
 contains 
   subroutine sub1(data) 
     character(*), intent(in) :: data(:) 
     call sub2(data, len(data)*size(data)) 
   end subroutine 
   subroutine sub2(data, len) 
     character, intent(in) :: data(*)
     integer, intent(in) :: len 
     integer :: i 
     write(1,*) (data(i), i=1,len) 
     if (any(data(:len) /= ['f','o','b','a'])) stop 1 
   end subroutine 
 end  

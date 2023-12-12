       module mod_1
       type derived_type 
        integer:: com=1
       end type
      end
      module mod_2    
      use mod_1      
        interface
          module subroutine proc(d_var)  
            type(derived_type) :: d_var  
          end 
        end interface
      end module

     use mod_2,only:proc 
     use mod_1
      type(derived_type) :: var  
     call proc(var)
   
print *,'pass'
   end
      submodule (mod_2) smod
        contains
          module subroutine proc(d_var)  
            type(derived_type) :: d_var  
            if (d_var%com/=1) print *,101
          end 
      end
    

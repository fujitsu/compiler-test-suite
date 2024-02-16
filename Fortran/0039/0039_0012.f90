       module mod_1
       type derived_type
        integer:: com
       end type
       type derived_type2
        integer:: com
       end type
       type derived_type3
        integer:: com
       end type
      end
      module mod_2
      use mod_1
        interface
          module subroutine proc()
            type(derived_type3) :: d_var3
          end subroutine
        end interface
      end module
    
     use mod_2,only:proc
     use mod_1
            type(derived_type3) :: d_var3
call proc()
     
   
print *,'pass'
   end
submodule (mod_2) smod
contains
  module        procedure proc
          end 
end

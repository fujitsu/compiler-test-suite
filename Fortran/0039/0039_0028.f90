       module mod_1
       type derived_type
        integer:: com
       end type
       type derived_type2
        integer:: com
       end type
       type derived_type3
        integer:: com=1
       end type
      end
      module mod_2
      use mod_1
        interface
          module subroutine proc()
            type(derived_type) :: d_var
            type(derived_type2) :: d_var2
            type(derived_type3) :: d_var3
          end subroutine
        end interface
      end module
    
module mod_3
     use mod_2,only:proc
     use mod_1,only:derived_type3
            type(derived_type3) :: d_var3
private
public::proc,derived_type3,d_var3
end
use mod_3,only:proc,derived_type3,d_var3

call proc()
if (d_var3%com/=1) print *,1012
     
   
print *,'pass'
   end
submodule (mod_2) smod
contains
  module        procedure proc
          end 
end

       module mod_1
       type derived_type ! 1)
        integer:: com
       end type
       type derived_type2! 1)
        integer:: com
       end type
       type derived_type3! 1)
        integer:: com
       end type
      end
      module mod_2    ! 2)
      use mod_1       ! 3)
        interface
          module subroutine proc()  ! 4)
            type(derived_type3) :: d_var3  !5)
          end subroutine
        end interface
      end module
    
module mod_3
     use mod_2,only:proc ! 6), 7), 8)
     use mod_1,only:derived_type3
            type(derived_type3) :: d_var3  !5)
private
public::proc
end
use mod_3
call proc()
     
   
print *,'pass'
   end
submodule (mod_2) smod
contains
  module        procedure proc
          end 
end

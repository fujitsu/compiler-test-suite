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
          module subroutine proc(d_var3)
            type(derived_type) :: d_var
            type(derived_type3) :: d_var3
          end subroutine
        end interface
      end module
    
     use mod_2,only:proc
     use mod_1
            type(derived_type) :: d_var
            type(derived_type3) :: d_var3
call proc(d_var3)
if (d_var3%com/=1) print *,1012
     
   
print *,'pass'
   end
submodule (mod_2) smod
contains
  module        subroutine proc(d_var3)
            use mod_1
            type(derived_type) :: d_var
            type(derived_type3) :: d_var3
          d_var3%com=1
          end subroutine
end

       module mod_1
       type derived_type 
        integer:: com
       end type
      end
      module mod_2
      use mod_1   
      contains
        subroutine xx
        interface
          subroutine proc(d_var)
            import :: derived_type
            type(derived_type) :: d_var
          end subroutine
        end interface
        end
      end module
    
     use mod_2,only:xx
call xx
   
print *,'pass'
   end

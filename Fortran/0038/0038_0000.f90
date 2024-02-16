       module mod_1
       type derived_type
        integer:: com
       end type
      end
      module mod_2
      use mod_1
        interface
          subroutine proc(d_var)
            import
            type(derived_type) :: d_var
          end subroutine
        end interface
      end module
    
     use mod_2,only:proc
   
print *,'pass'
   end

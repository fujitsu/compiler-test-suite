       module mod_1
       type derived_type 
        integer:: com
       end type
      end
      module mod_2   
      contains
        subroutine xx
      use mod_1      
       block
        interface
          subroutine proc(d_var) 
            import :: derived_type 
            type(derived_type) :: d_var
          end subroutine
        end interface
            type(derived_type) :: d_var
        call proc(d_var)
        if(d_var%com/=1)print *,201
       end block
        end
      end module
    
     use mod_2,only:xx 
call xx
   
print *,'pass'
   end
          subroutine proc(d_var) 
           use mod_1
            type(derived_type) :: d_var
            d_var%com=1
          end subroutine

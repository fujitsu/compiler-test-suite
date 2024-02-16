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
      contains
       subroutine xx
      use mod_1
    block
        interface
          subroutine proc(d_var3)
            import :: derived_type,derived_type3
            type(derived_type) :: d_var
            type(derived_type3) :: d_var3
          end subroutine
        end interface
            type(derived_type) :: d_var
            type(derived_type3) :: d_var3
call proc(d_var3)
if (d_var3%com/=1) print *,1012
    end block
       end
      end module
    
     use mod_2,only:xx
     use mod_1
call xx
     
   
print *,'pass'
   end
          subroutine proc(d_var3)
            use mod_1
            type(derived_type) :: d_var
            type(derived_type3) :: d_var3
          d_var%com=1
          d_var3%com=1
          end subroutine

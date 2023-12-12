       module mod_1
       type derived_type ! 1)
        integer:: com
       end type
      end
      module mod_2    ! 2)
      use mod_1       ! 3)
      contains
        subroutine xx
        interface
          subroutine proc(d_var)  ! 4)
            import :: derived_type ! 5)
            type(derived_type) :: d_var  !5)
          end subroutine
        end interface
        end
      end module
    
     use mod_2,only:xx ! 6), 7), 8)
call xx
   
print *,'pass'
   end

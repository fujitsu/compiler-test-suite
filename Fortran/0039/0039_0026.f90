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
      contains
       subroutine xx
      use mod_1       ! 3)
    block
        interface
          subroutine proc(d_var3)  ! 4)
            import :: derived_type,derived_type3 ! 5)
            type(derived_type) :: d_var  !5)
            type(derived_type3) :: d_var3  !5)
          end subroutine
        end interface
            type(derived_type) :: d_var  !5)
            type(derived_type3) :: d_var3  !5)
call proc(d_var3)
if (d_var3%com/=1) print *,1012
    end block
       end
      end module
    
module mod_3
     use mod_2,only:xx ! 6), 7), 8)
private
public::xx
end
module mod_4
     use mod_3,only:xx ! 6), 7), 8)
private
public::xx
end
use mod_4
call xx
     
   
print *,'pass'
   end
          subroutine proc(d_var3)  ! 4)
            use mod_1
            type(derived_type) :: d_var  !5)
            type(derived_type3) :: d_var3  !5)
          d_var%com=1
          d_var3%com=1
          end subroutine

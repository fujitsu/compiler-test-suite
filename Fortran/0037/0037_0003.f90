     1  module mod_1
     2   type derived_type ! 1)
     3    integer:: com
     4   end type
     5  end
     6  module mod_2    ! 2)
     7  use mod_1       ! 3)
     8    interface
     9      subroutine proc(d_var)  ! 4)
    10        import :: derived_type ! 5)
    11        type(derived_type) :: d_var  !5)
    12      end subroutine
    13    end interface
    14  end module
    
    16  use mod_2,only:proc ! 6), 7), 8)
   
   print *,'pass'
    18 end


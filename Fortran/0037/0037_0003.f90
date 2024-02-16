     1  module mod_1
     2   type derived_type 
     3    integer:: com
     4   end type
     5  end
     6  module mod_2    
     7  use mod_1       
     8    interface
     9      subroutine proc(d_var)
    10        import :: derived_type
    11        type(derived_type) :: d_var
    12      end subroutine
    13    end interface
    14  end module
    
    16  use mod_2,only:proc
   
   print *,'pass'
    18 end


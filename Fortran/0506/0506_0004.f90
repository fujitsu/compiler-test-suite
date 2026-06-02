module mod_m
   implicit none
   type :: ttt_t
   contains
      procedure :: lll   
   end type ttt_t
   interface
      subroutine lll(this)
         import ttt_t
         class (ttt_t), intent(inout) :: this
      end subroutine lll
   end interface
contains
   subroutine xxx_ttts()
   call bbb(xxx_p())
   call bbb(xxx_ttt())
   contains
   function xxx_ttt() result(lll)
     class (ttt_t), allocatable :: lll
   end function 
   end subroutine xxx_ttts

   function xxx_p() result(lll)
     class (ttt_t), allocatable :: lll
   end function 
   subroutine bbb(x)
     class (ttt_t) :: x   
   end
end 
print *,'pass'
end

      subroutine lll(this)
         use mod_m
         class (ttt_t), intent(inout) :: this
      end subroutine lll

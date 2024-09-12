module mod_m
   implicit none
contains
   subroutine xxx_ttts()
   type :: ttt_t
   end type ttt_t
   print *,xxx_ttt()
   call bbb(xxx_ttt())
   contains
   type (ttt_t) function xxx_ttt()
   end function xxx_ttt
   subroutine  bbb(x)
     type  (ttt_t):: x
   end subroutine
   end subroutine xxx_ttts
end
print *,'pass'
end


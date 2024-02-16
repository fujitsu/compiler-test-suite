   module mod1
    integer i
   contains
    subroutine mod1_sub01()
    i=10
    if (i.ne.10) call mod1_sub02()
    end subroutine
    subroutine mod1_sub02()
    call mod1_sub01()
    end subroutine
   end

   use mod1
   call mod1_sub01()
   end


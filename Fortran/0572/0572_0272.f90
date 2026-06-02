integer::i(10)
character::ch(10)
interface  
     subroutine sub(x)
       type(*) :: x(..)
     end subroutine
  end interface
  procedure (sub), pointer :: p => null()
   p => sub
   i = 0
   call p(i(1:10:2))
   call p(ch(1:10:3))
  print*,"pass"
  end
     subroutine sub(x)
       type(*) :: x(..)
        if(is_contiguous(x) .neqv. .false.)print*,101
 
     end subroutine

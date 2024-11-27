module parent
integer :: val =0
  procedure(sub), pointer, protected :: prc
  procedure(sub), pointer, protected :: prc2
    interface 
     subroutine sub
     end subroutine sub
    end interface
   contains
   subroutine run
     prc=>sub1
     prc2=>sub2
   end subroutine
     subroutine sub1
     val=val+5
     end subroutine sub1
     subroutine sub2
     val=val+10
     end subroutine sub2
end module 

module child
use parent
procedure(sub),pointer, protected :: prc3
 contains
  subroutine ss
   val=val+10
  end subroutine ss
  subroutine ss1
  prc3=>ss
  end subroutine ss1
end module 

program main
use parent
use child
call run
call prc
  if(val/=5) print *, 101
  call prc2
  if(val/=15) print *, 102
  call ss1
  call prc3
  if(val/=25) print *, 103
   print *, 'Pass'
end program 


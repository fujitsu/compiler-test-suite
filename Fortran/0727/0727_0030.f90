   character*3,allocatable,dimension(:)::array
   character*3,pointer    ,dimension(:)::arrayx
   allocate(array(3))
   i=1
   array=(/'123','456','789'/)
   call sub(array,1,null(arrayx))
 print *,'pass'
   contains
     elemental function cfu(a)
     character*(i)::cfu
     character*(*),intent(in)::a
     cfu=a
     end function
     subroutine sub(a,j,b)
     character*(*),intent(in)::a(:)
     character*(*),pointer::b(:)
     if (any(a/=(/'123','456','789'/)))write(6,*) "NG"
     if (associated(b))write(6,*) "NG"
     if (j/=1)write(6,*) "NG"
     end subroutine
   end
    
      

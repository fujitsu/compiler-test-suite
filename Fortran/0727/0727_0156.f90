   character*3 ::b(5)=(/'123','456','789','abc','def'/)
   i=2
   if (any(f(b)/=(/'12','45','78','ab','de'/)))write(6,*) "NG"
   print *,'pass'
     contains
   elemental function f(c)
   character*(*),intent(in):: c
   character*(i)::f
   f=c
   end function
   end
   

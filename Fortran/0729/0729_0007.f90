module mA
 implicit none
contains
 subroutine fprintf_integer(cadena,oi1,oi2,oi3,oi4,oi5,oi6,oi7,oi8,oi9)
  implicit none
   character(100)                       :: cadena
   integer,optional                     :: oi1,oi2,oi3,oi4,oi5,oi6,oi7,oi8,oi9
   integer                :: ind
   ind    = 9
   cadena=AdvanceCad()

 contains
   function AdvanceCad()
    implicit none
    character                          :: AdvanceCad
       ind = ind + 1
       AdvanceCad = 'a'
       if (ind/=10)write(6,*) "NG"
   end function AdvanceCad

 end subroutine  fprintf_integer

end module mA
use mA
 character*100 xx
call fprintf_integer(xx)
 if (xx/='a')write(6,*) "NG"
print *,'pass'
end

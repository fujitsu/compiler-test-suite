module mod2
integer::cc=0
 interface assignment(=)
   module procedure int_equals_char
 end interface assignment(=)
 contains
  subroutine int_equals_char(i,c)
    integer, intent(out):: i(..)
    character, intent(in):: c(..)
     cc=cc+1
     if(kind(i)/=4)print*,201
     if(len(c)/=1)print*,202
        end subroutine
 end module

  program assignment_interface
   use mod2
   integer::i(2),ii,i3(2,2),i4(2,3,4,5)
   character::c='a',c1(2),c2(3,4)
   i=1
   ii=11
   i3=3
   i4=4
   c1='s'
   c2='d'

   i=c
   ii=c1
   i3=c2
   i4=c
   i='a'
   if(cc /= 5 )print*,101
   print*,"PASS"
  end program
  


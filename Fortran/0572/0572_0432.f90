
module mod2
 interface operator(.and.)
   module procedure sub_and
 end interface operator(.and.)
 interface operator(+)
   module procedure sub_add
 end interface operator(+)
 contains
  function sub_and(i,c)
    integer, intent(in):: i(..)
    character, intent(in):: c(..)
        integer::sub_and
        sub_and=55
        if(kind(i)/=4)print*,201
        if(len(c)/=1)print*,202
  end function
  function sub_add(i,c)
    integer, intent(in):: i(..)
    character, intent(in):: c(..)
        integer::sub_add
        sub_add=44
        if(kind(i)/=4)print*,203
        if(len(c)/=1)print*,204
  end function
 end module

  program assignment_interface
   use mod2
   integer::i(2),i1,i3(2,2),i4(2,3,4,5)
   character::c='a',c1(2),c2(3,4)
   i=1
   i1=2
   i3=3
   i4=4
   c1='b'
   c2='c'
   aa=0
   bb=0
   aa=i.and.c
   bb=i+c
   if(aa /=55 )print*,101
   if(bb /=44 )print*,102
   aa=0
   bb=0
   aa=i1.and.c1
   bb=i1+c1
   if(aa /=55 )print*,101
   if(bb /=44 )print*,102
   aa=0
   bb=0
   aa=i3.and.c2
   bb=i3+c2
   if(aa /=55 )print*,101
   if(bb /=44 )print*,102
   aa=0
   bb=0
   aa=i4.and.c
   bb=i4+c
   if(aa /=55 )print*,101
   if(bb /=44 )print*,102
   print*,"PASS"
  end program
  


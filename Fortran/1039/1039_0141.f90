module m1
TYPE Z_TYPE
  complex,pointer:: p2s
  complex,pointer:: p2a(:)
  complex        :: s2s
  complex        :: s2a(2)
END TYPE
contains
subroutine sub(p1,s1)
TYPE(Z_TYPE) ,POINTER::p1(:)
TYPE(Z_TYPE)         ::s1(2),sx1,sx2
complex,target::t1s=(11,-11),t1a(2)=(/(12,-12),(13,-13)/)
complex,target::t2s=(21,-21),t2a(2)=(/(22,-22),(23,-23)/)
sx1=Z_TYPE(t1s,t1a,(14,-14),(/(15,-15),(16,-16)/))
sx2=Z_TYPE(t2s,t2a,(24,-24),(/(25,-25),(26,-26)/))
    ALLOCATE (p1(2))
    ALLOCATE (p1(2)%p2s)
    ALLOCATE (p1(2)%p2a(2))
    ALLOCATE (s1(2)%p2s)
    ALLOCATE (s1(2)%p2a(2))
 p1(2)%p2s=(101,-101)
 p1(2)%p2a(1)=(102,-102)
 p1(2)%p2a(2)=(103,-103)
 p1(2)%s2s=(104,-104)
 p1(2)%s2a(1)=(105,-105)
 p1(2)%s2a(2)=(106,-106)
 s1(2)%p2s=(201,-201)
 s1(2)%p2a(1)=(202,-202)
 s1(2)%p2a(2)=(203,-203)
 s1(2)%s2s=(204,-204)
 s1(2)%s2a(1)=(205,-205)
 s1(2)%s2a(2)=(206,-206)
if (abs(p1(2)%p2s-(101,-101))>0.0001)print *,"Error-1*:" 
if (abs(p1(2)%p2a(1)-(102,-102))>0.0001)print *,"Error-2*:" 
if (abs(p1(2)%p2a(2)-(103,-103))>0.0001)print *,"Error-3*:" 
if (abs(p1(2)%s2s-(104,-104))>0.0001)print *,"Error-4x*:" 
if (abs(p1(2)%s2a(1)-(105,-105))>0.0001)print *,"Error-5*:" 
if (abs(p1(2)%s2a(2)-(106,-106))>0.0001)print *,"Error-6*:" 
if (abs(s1(2)%p2s-(201,-201))>0.0001)print *,"Error-11*:" 
if (abs(s1(2)%p2a(1)-(202,-202))>0.0001)print *,"Error-12*:" 
if (abs(s1(2)%p2a(2)-(203,-203))>0.0001)print *,"Error-13*:" 
if (abs(s1(2)%s2s-(204,-204))>0.0001)print *,"Error-14*:" 
if (abs(s1(2)%s2a(1)-(205,-205))>0.0001)print *,"Error-15*:" 
if (abs(s1(2)%s2a(2)-(206,-206))>0.0001)print *,"Error-16*:" 
 p1(2)=sx1
 s1(2)=sx2
if (abs(p1(2)%p2s-(11,-11))>0.0001)print *,"Error-1*:" 
if (abs(p1(2)%p2a(1)-(12,-12))>0.0001)print *,"Error-2*:" 
if (abs(p1(2)%p2a(2)-(13,-13))>0.0001)print *,"Error-3*:" 
if (abs(p1(2)%s2s-(14,-14))>0.0001)print *,"Error-4*:" 
if (abs(p1(2)%s2a(1)-(15,-15))>0.0001)print *,"Error-5*:" 
if (abs(p1(2)%s2a(2)-(16,-16))>0.0001)print *,"Error-6*:" 
if (abs(s1(2)%p2s-(21,-21))>0.0001)print *,"Error-11*:" 
if (abs(s1(2)%p2a(1)-(22,-22))>0.0001)print *,"Error-12*:" 
if (abs(s1(2)%p2a(2)-(23,-23))>0.0001)print *,"Error-13*:" 
if (abs(s1(2)%s2s-(24,-24))>0.0001)print *,"Error-14*:" 
if (abs(s1(2)%s2a(1)-(25,-25))>0.0001)print *,"Error-15*:" 
if (abs(s1(2)%s2a(2)-(26,-26))>0.0001)print *,"Error-16*:" 
end subroutine
end
use m1
TYPE(Z_TYPE) ,POINTER::p1(:)
TYPE(Z_TYPE)         ::s(2)
call sub(p1,s)
print *,'pass'
END 

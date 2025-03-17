module m1
TYPE Z_TYPE
  integer,pointer:: p2s
  integer,pointer:: p2a(:)
  integer        :: s2s
  integer        :: s2a(2)
END TYPE
contains
subroutine sub(p1,s1)
TYPE(Z_TYPE) ,POINTER::p1
TYPE(Z_TYPE)         ::s1,sx1,sx2
integer,target::t1s=11,t1a(2)=(/12,13/)
integer,target::t2s=21,t2a(2)=(/22,23/)
sx1=Z_TYPE(t1s,t1a,14,(/15,16/))
sx2=Z_TYPE(t2s,t2a,24,(/25,26/))
    ALLOCATE (p1)
    ALLOCATE (p1%p2s)
    ALLOCATE (p1%p2a(2))
    ALLOCATE (s1%p2s)
    ALLOCATE (s1%p2a(2))
 p1%p2s=101
 p1%p2a(1)=102
 p1%p2a(2)=103
 p1%s2s=104
 p1%s2a(1)=105
 p1%s2a(2)=106
 s1%p2s=201
 s1%p2a(1)=202
 s1%p2a(2)=203
 s1%s2s=204
 s1%s2a(1)=205
 s1%s2a(2)=206
if (p1%p2s/=101)print *,"Error-1*:" 
if (p1%p2a(1)/=102)print *,"Error-2*:" 
if (p1%p2a(2)/=103)print *,"Error-3*:" 
if (p1%s2s/=104)print *,"Error-4*:" 
if (p1%s2a(1)/=105)print *,"Error-5*:" 
if (p1%s2a(2)/=106)print *,"Error-6*:" 
if (s1%p2s/=201)print *,"Error-11*:" 
if (s1%p2a(1)/=202)print *,"Error-12*:" 
if (s1%p2a(2)/=203)print *,"Error-13*:" 
if (s1%s2s/=204)print *,"Error-14*:" 
if (s1%s2a(1)/=205)print *,"Error-15*:" 
if (s1%s2a(2)/=206)print *,"Error-16*:" 
 p1=sx1
 s1=sx2
if (p1%p2s/=11)print *,"Error-1*:" 
if (p1%p2a(1)/=12)print *,"Error-2*:" 
if (p1%p2a(2)/=13)print *,"Error-3*:" 
if (p1%s2s/=14)print *,"Error-4*:" 
if (p1%s2a(1)/=15)print *,"Error-5*:" 
if (p1%s2a(2)/=16)print *,"Error-6*:" 
if (s1%p2s/=21)print *,"Error-11*:" 
if (s1%p2a(1)/=22)print *,"Error-12*:" 
if (s1%p2a(2)/=23)print *,"Error-13*:" 
if (s1%s2s/=24)print *,"Error-14*:" 
if (s1%s2a(1)/=25)print *,"Error-15*:" 
if (s1%s2a(2)/=26)print *,"Error-16*:" 
end subroutine
end
use m1
TYPE(Z_TYPE) ,POINTER::p1
TYPE(Z_TYPE)         ::s
call sub(p1,s)
print *,'pass'
END 

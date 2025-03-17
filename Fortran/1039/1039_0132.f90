module m1
TYPE Z_TYPE
  TYPE(Z_TYPE),pointer:: x2
  integer,pointer:: p2
  integer,pointer:: p3(:)
  integer        :: s2
  integer        :: s3(2)
END TYPE
contains
subroutine sub(p1,s1)
TYPE(Z_TYPE) ,POINTER::p1(:)
TYPE(Z_TYPE)         ::s1(2),sx1,sx2
TYPE(Z_TYPE),target  ::sy1,sy2
integer,target::t1=11,t2=13
integer,target::y1(2)=(/21,22/),y2(2)=(/23,24/)
integer,target::ws1=101,wa1(2)=(/102,103/)
integer,target::ws2=121,wa2(2)=(/122,123/)
sy1=Z_TYPE(NULL(),ws1,wa1,111,(/112,113/))
sy2=Z_TYPE(NULL(),ws2,wa2,131,(/132,133/))
sx1=Z_TYPE(sy1,t1,y1,12,(/14,15/))
sx2=Z_TYPE(sy2,t2,y2,16,(/25,26/))
    ALLOCATE (p1(2))
    ALLOCATE (p1(2)%x2)
    ALLOCATE (p1(2)%x2%p2)
    ALLOCATE (p1(2)%x2%p3(2))
    ALLOCATE (s1(2)%x2)
    ALLOCATE (s1(2)%x2%p2)
    ALLOCATE (s1(2)%x2%p3(2))
 p1(2)%x2%p2=1
 p1(2)%x2%p3(2)=2
 p1(2)%x2%s2=3
 p1(2)%x2%s3(2)=4
 p1(2)=sx1
 s1(2)%x2%p2=1
 s1(2)%x2%p3(2)=2
 s1(2)%x2%s2=3
 s1(2)%x2%s3(2)=4
 s1(2)=sx2
if (p1(2)%p2/=11)print *,"Error-1*:" 
if (p1(2)%s2/=12)print *,"Error-2*:" 
if (s1(2)%p2/=13)print *,"Error-3*:" 
if (s1(2)%s2/=16)print *,"Error-4*:" 
if (p1(2)%x2%p2/=101)print *,"Error-101*:" 
if (p1(2)%x2%p3(1)/=102)print *,"Error-102*:" 
if (p1(2)%x2%p3(2)/=103)print *,"Error-103*:" 
if (p1(2)%x2%s2/=111)print *,"Error-111*:" 
if (p1(2)%x2%s3(1)/=112)print *,"Error-112*:" 
if (p1(2)%x2%s3(2)/=113)print *,"Error-113*:" 
if (s1(2)%x2%p2/=121)print *,"Error-121*:" 
if (s1(2)%x2%p3(1)/=122)print *,"Error-122*:" 
if (s1(2)%x2%p3(2)/=123)print *,"Error-123*:" 
if (s1(2)%x2%s2/=131)print *,"Error-131*:" 
if (s1(2)%x2%s3(1)/=132)print *,"Error-132*:" 
if (s1(2)%x2%s3(2)/=133)print *,"Error-133*:" 
end subroutine
end
use m1
TYPE(Z_TYPE) ,POINTER::p1(:)
TYPE(Z_TYPE)         ::s1(2)
call sub(p1,s1)
print *,'pass'
END 

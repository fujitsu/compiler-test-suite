TYPE Z_TYPE
  integer,pointer:: p2
  integer        :: s2
END TYPE
TYPE(Z_TYPE) ,POINTER::p1
TYPE(Z_TYPE)         ::s1,sx1,sx2
integer,target::t1=11,t2=13
sx1=Z_TYPE(t1,12)
sx2=Z_TYPE(t2,14)
    ALLOCATE (p1)
    ALLOCATE (p1%p2)
    ALLOCATE (s1%p2)
 p1%p2=1
 p1%s2=2
 s1%p2=3
 s1%s2=4
if (p1%p2/=1)print *,"Error-11*:" 
if (p1%s2/=2)print *,"Error-12*:" 
if (s1%p2/=3)print *,"Error-13*:" 
if (s1%s2/=4)print *,"Error-14*:" 
 p1=sx1
 s1=sx2
if (p1%p2/=11)print *,"Error-1*:" 
if (p1%s2/=12)print *,"Error-2*:" 
if (s1%p2/=13)print *,"Error-3*:" 
if (s1%s2/=14)print *,"Error-4*:" 
print *,'pass'
END 

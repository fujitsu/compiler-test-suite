TYPE G
  SEQUENCE
  integer,pointer     ::T,Q,F
END TYPE
TYPE(G),pointer ::XQD496
integer,target::T1=1,T2=2,T3=3

      ALLOCATE (XQD496)
      ALLOCATE (XQD496%T)
      ALLOCATE (XQD496%Q)
      ALLOCATE (XQD496%F)
      XQD496=G(T1,T2,T3)
      XQD496%T=XQD496%Q
if (XQD496%T/=2)print *,'error-1',XQD496%T
if (XQD496%Q/=2)print *,'error-2',XQD496%Q
if (XQD496%F/=3)print *,'error-3',XQD496%F
print *,'pass'
END 

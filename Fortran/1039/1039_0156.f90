TYPE G
  SEQUENCE
  integer     ::T,Q,F
END TYPE
TYPE(G) ,POINTER::XQD496

      ALLOCATE (XQD496)
      XQD496=G(1,2,3)
      XQD496%T=XQD496%Q
if (XQD496%T/=2)print *,'error-1',XQD496%T
if (XQD496%Q/=2)print *,'error-2',XQD496%Q
print *,'pass'
END 

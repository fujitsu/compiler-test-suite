TYPE G
  SEQUENCE
  integer     ::T,Q,F
END TYPE
TYPE(G) ,POINTER::XQD496(:)

      ALLOCATE (XQD496(2))
      XQD496(2)=G(1,2,3)
      XQD496(2)%T=XQD496(2)%Q
if (XQD496(2)%T/=2)print *,'error-1',XQD496(2)%T
if (XQD496(2)%Q/=2)print *,'error-2',XQD496(2)%Q
if (XQD496(2)%F/=3)print *,'error-3',XQD496(2)%Q
print *,'pass'
END 

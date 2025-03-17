TYPE G
  SEQUENCE
  integer,pointer,dimension(:)     ::T,Q,F
END TYPE
TYPE(G) ::XQD496
integer,target,dimension(2)::T1=1,T2=2,T3=3

      ALLOCATE (XQD496%T(2))
      ALLOCATE (XQD496%Q(2))
      ALLOCATE (XQD496%F(2))
      XQD496=G(T1,T2,T3)
      XQD496%T=XQD496%Q
if (any(XQD496%T/=2))print *,'error-1',XQD496%T
if (any(XQD496%Q/=2))print *,'error-2',XQD496%Q
if (any(XQD496%F/=3))print *,'error-3',XQD496%F
print *,'pass'
END 

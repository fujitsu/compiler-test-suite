  !             CVCT5907            LEVEL=1        DATE=84.02.03
  !****<< CVCT5907 >>****
  ! CHANGED DO INDEX
  !
  !*****
  type st1
     REAL*8 ASIN(100,100),B(100,100),C(100,100)
     REAL*8 XSIN(100,100)
     INTEGER ISIN(200,100)
     INTEGER ICOS(200,100)
  end type st1
  type(st1) :: str

  REAL*8 PAI
  DATA N2,N3/100,1/
  DATA str%ISIN/20000*0/
  DATA str%ICOS/20000*0/
  !
  PAI=ATAN(1.0)*4
  S2=-0.01D0
  S1=-0.001D0
  !ocl nosimd
  DO  I=1,N2
     DO  J=1,N2
        S1=S1+0.01D0
        S2=S2+0.001D0
        str%B(I,J)=S1
        str%C(I,J)=S2
     enddo
  enddo
  !**** I,J --> J,I
  DO  I=1,N2
     DO  J=1,100
        str%ASIN(I,J)=SIN(str%B(I,J))
        str%XSIN(I,J)=SIN(str%C(I,J))
20      CONTINUE
10      CONTINUE
     enddo
  enddo
  !****
  DO  J=1,N2
     DO  I=1,N2
        IZ=str%ASIN(I,J)*100.0D0
        IY=1.0-str%XSIN(I,J)*100.0D0
        str%ISIN(100+IZ,I)=1
        str%ICOS(100+IY,I)=1
40      CONTINUE
30      CONTINUE
     enddo
  enddo
  write(6,1) str%ISIN
  write(6,*)
  write(6,1) str%ICOS
  1 format(20i4)
END program

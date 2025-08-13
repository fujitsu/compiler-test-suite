      IMPLICIT REAL*4 (A-H,O-Z)
      PARAMETER (N=1024,l=1024)
      DIMENSION  RX(N,N),RY(N,N)
      DIMENSION  a(N,N),b(N,N),c(N,N)
C
      SAVE
      RXM  = 0
      RYM  = 0
      M=1
      p=0
      q=0
      rx = 0
      ry = 0
      a=1
      b=2
      c=3
      do 10 i=1,1024
      do 10 j=1,1024
        rx(i,j)=i
        ry(i,j)=1024-j
        a(i,j) = a(i,j)+b(j,i)+c(i,j)
10    enddo
C
      DO    20    J = 1,1
      DO    20    I = 1,1
      IF(ABS(RX(I,J)).LT.ABS(RXM))  GOTO  21
      RXM  = RX(I,J)
      IRXM = I
      JRXM = J
 21   IF(ABS(RY(I,J)).LT.ABS(RYM))  GOTO  20
      RYM  = RY(I,J)
      IRYM = I
      JRYM = J
 20   CONTINUE
      print *,"rxm =",rxm
      print *,"rym =",rym
      print *,"irxm=",irxm
      print *,"jrym=",jrxm
      print *,"irym=",irym
      print *,"jrym=",jrym
      stop
      end

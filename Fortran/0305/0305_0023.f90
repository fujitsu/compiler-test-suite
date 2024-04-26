subroutine sub(A,B,C,NK,NJ,NI)
real A(100,100),B(100,100),C(100,100)
A=1.0
B=1.0
C=1.0
DO K=1,NK
   DO J=1,NJ
      DO I=1,NI
         A(I,J)=A(I,J)+B(I,K)*C(K,J)
      ENDDO
   ENDDO
ENDDO
if (A(100,100) .eq. 101.000000) then
  write(6,*) "OK"
else
  write(6,*) "NG"
endif
end subroutine


real A(100,100),B(100,100),C(100,100)
integer NK,NJ,NI
NK=100
NJ=100
NI=100
call sub(A,B,C,NK,NJ,NI)
end

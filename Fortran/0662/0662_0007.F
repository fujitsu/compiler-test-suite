      INTEGER*2 A1,A2,A3
      INTEGER*4 B1,B2,B3
      LOGICAL*1 C1,C2,C3
      LOGICAL*4 D1,D2,D3
      REAL*4    E1,E2,E3
      CALL S(LOC(C1),'L*1      ')
      CALL S(LOC(C2),'L*1      ')
      CALL S(LOC(C3),'L*1      ')
      CALL S(LOC(A1),'I*2      ')
      CALL S(LOC(A2),'I*2      ')
      CALL S(LOC(A3),'I*2      ')
      CALL S(LOC(B1),'I*4      ')
      CALL S(LOC(B2),'I*4      ')
      CALL S(LOC(B3),'I*4      ')
      CALL S(LOC(D1),'L*4      ')
      CALL S(LOC(D2),'L*4      ')
      CALL S(LOC(D3),'L*4      ')
      CALL S(LOC(E1),'R*4      ')
      CALL S(LOC(E2),'R*4      ')
      CALL S(LOC(E3),'R*4      ')
      PRINT *,'PASS'
      END
      SUBROUTINE S(A1,X)
      CHARACTER*9 X
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) ||  defined(__aarch64__)
      integer*8 A1
#else
      INTEGER A1
#endif
      IF (     MOD(A1,8).EQ.0) THEN
         WRITE(1,*)X//'は，8バイト境界です'   
      ELSE IF (MOD(A1,4).EQ.0) THEN
         WRITE(1,*)X//'は，4バイト境界です'  
      ELSE IF (MOD(A1,2).EQ.0) THEN
         WRITE(1,*)X//'は，2バイト境界です' 
      ELSE
         WRITE(1,*)X//'は，1バイト境界です'
      ENDIF
      END

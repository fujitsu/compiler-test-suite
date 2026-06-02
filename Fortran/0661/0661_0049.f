       SUBROUTINE SUB1(C1,C2,D1,D2,I1,I3,E1,E2,E3)
       CHARACTER*(*) C1(I1:I3),C2(I1:I3),D1(I1:I3),D2(I1:I3),E1,E2,E3
       WRITE(1,C1//C2) D1//D2,D1//D2,D1//D2
       BACKSPACE 1
       READ (1,'(3A)') E1,E2,E3
       IF (E1.NE.E2 .OR. E1.NE.E3 .OR. E2.NE.E3) PRINT *,'FAIL'
       IF (E1.NE.D1(1)//D2(1)//D1(2)//D2(2)//D1(3)//D2(3))
     +   PRINT *,'FAIL'
       END
       SUBROUTINE SUB2(C1,C2,C3,C4,C5,C6,C7,C8,C9,C,CC,CF1,CF2,CF3,I3)
       IMPLICIT CHARACTER*(*) (C)
       WRITE(2,'(9A)',ERR=111)C1,C2,C3,C4,C5,C6,C7,C8,C9
       WRITE(2,'( A)',ERR=111)C1//C2//C3//C4//C5//C6//C7//C8//C9
       WRITE(2,'( A)',ERR=111) C
       WRITE(2,'( A)',ERR=111)'123456789'
       WRITE(2,CF1   ,ERR=111)C1,C2,C3,C4,C5,C6,C7,C8,C9
       WRITE(2,CF2   ,ERR=111)C1//C2//C3//C4//C5//C6//C7//C8//C9
       WRITE(2,CF2   ,ERR=111) C
       WRITE(2,CF2   ,ERR=111)'123456789'
       WRITE(2,CF1(:I3)//CF3,ERR=111)C1,C2,C3,C4,C5,C6,C7,C8,C9
       WRITE(2,CF2(:I3)//CF3,ERR=111)C1//C2//C3//C4//C5//C6//C7//C8//C9
       WRITE(2,CF2(:I3)//CF3,ERR=111) C
       WRITE(2,CF2(:I3)//CF3,ERR=111)'123456789'
       REWIND 2
       DO 109 IKL=1,4*3
          READ(2,'(A)') CC
          IF (CC.NE.C) PRINT *,'FAIL'
          CC='XXXXXXXX'
109    CONTINUE
       RETURN
111    PRINT *,'FAIL'
       END
       PARAMETER (I1=1,I3=3)
       CHARACTER*(3) C1(I1:I3),C2(I1:I3),D1(I1:I3),D2(I1:I3)
       CHARACTER*((3+3)*3)       E1,E2,E3
       CHARACTER*9    CC,CF1,CF2,CF3
       C1(1)='(  '
       C1(2)='3(3'
       C1(3)='A))'
       C2=''
       D1(1)='111'
       D1(2)='222'
       D1(3)='333'
       D2=D1
       CC='XXXXXXXXXXXXXX'
       CF1='(9A)'
       CF2='( A)'
       CF3='   )'
       CALL     SUB1(C1,C2,D1,D2,I1,I3,E1,E2,E3)
       CALL     SUB2('1','2','3','4','5','6','7','8','9',
     1               '1'//'2'//'3'//'4'//'5'//'6'//'7'//'8'//'9',
     2               CC,CF1,CF2,CF3,I3)
       PRINT *,'PASS'
       END

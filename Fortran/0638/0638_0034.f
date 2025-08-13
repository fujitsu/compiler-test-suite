#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
       INTEGER * 4 I4001,I4002,I4003,I4004,I4005
       REAL    * 4 R4001,R4002,R4003,R4004,R4005
       REAL    * 8 R8001,R8002,R8003,R8004,R8005
       LOGICAL * 4 L4001,L4002
       COMPLEX *16 C1601,C1603,C1604,C1605
       INTEGER * 4 I4A01(20),I4A02(20),I4A03(20),I4A04(20),I4A05(20)
       REAL    * 4 R4A01(20),R4A02(20),R4A03(20),R4A04(20),R4A05(20)
       REAL    * 8 R8A01(20),R8A02(20),R8A03(20),R8A04(20),R8A05(20)
       LOGICAL * 1 L1A01(20)
       LOGICAL * 4 L4A01(20),L4A02(20),L4A03(20),L4A04(20),L4A05(20)
       COMPLEX *16 C16A1(20),C16A2(20),C16A3(20),C16A4(20),C16A5(20)
       REAL*4 RES1(20),RES2(20),RES3(20)
       DATA I4A01/20*1/,I4A02/20*2/,I4A03/20*3/,I4A04/20*4/,I4A05/20*5/
       DATA I4001/1/,I4002/2/,I4003/3/,I4004/4/,I4005/5/
       DATA R4A01/20*1.1/,R4A02/20*2.2/,R4A03/20*0/
       DATA R4A04/20*0/,R4A05/20*0/
       DATA R8A01/20*3.0/,R8A02/20*4.0/,R8A03/20*0/,R8A04/20*0/
       DATA R8A05/20*0/
       DATA C16A1/20*(1.1,+1.0)/,C16A2/20*(2.2,-1.0)/
       DATA C16A3/20*(0,0)/,C16A4/20*(0,0)/,C16A5/20*(0,0)/
       DATA C1601/(1.1,+1.0)/,C1603/(3.3,-1.1)/
       DATA C1604/(4.4,+1.0)/,C1605/(5.5,-1.0)/
       DATA L1A01/10 * .TRUE., 10* .FALSE./
       DATA L4A01/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       DATA L4A03/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       DATA L4A04/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       DATA L4A05/5*.FALSE.,5*.TRUE.,5*.FALSE.,5*.TRUE./
       DATA RES1/20*24.2/,RES2/20*114.4/,RES3/20*0.25/
       R4001 = 0
       R4002 = 0
       R4003 = 0
       R4004 = 0
       R4005 = 0
       R8001 = 0
       R8002 = 0
       R8003 = 0
       R8004 = 0
       R8005 = 0

       DO 10 I=1,20
         I4001 = I4001 + I4A01(I)
 10    CONTINUE
       DO 11 I=1,20
         R4001 = R4001 + R4A01(I)
 11    CONTINUE
       DO 12 I=1,20
         R8001 = R8001 + R8A01(I)
 12    CONTINUE
       DO 13 I=1,20
         C1601 = C1601 + C16A1(I)
 13    CONTINUE
       WRITE(6,*) I4001
       if (IS_EQUAL(R4001,22.0)) then
       else
          WRITE(6,*) R4001
       endif
       WRITE(6,*) R8001
       WRITE(6,1) C1601
 1     format(("(",f25.14,",",f25.14,") "))
       I4003 = 0
       DO 20 I=1,20
         IF (L4A01(I))  THEN
           I4002 = I4002 + I4A02(I)
           I4003 = I4003 + 1
         ENDIF
 20    CONTINUE
       R4003 = 0.0
       DO 21 I=1,20
         IF (L4A01(I))  THEN
         R4002 = R4002 + R4A02(I)
         R4003 = R4003 + 1
         ENDIF
 21    CONTINUE
       R8003 = 0.0
       DO 22 I=1,20
         IF (L4A01(I)) THEN
         R8002 = R8002 + R8A02(I)
         R8003 = R8003 + 1
         ENDIF
 22    CONTINUE
       WRITE(6,*) '** ITEM1-B **'
       WRITE(6,*) I4002,R4002,R8002,I4003,R4003,R8003
       N  =  2
       DO 30 I =1,20,N
         IF (L4A05(I)) THEN
         I4003    = (I4003 + I4A03(I)) + (I4005 + I4A04(I))
         R4003    = (R4003 + R4A03(I)) + (R4005 + R4A04(I))
         ENDIF
 30    CONTINUE
       DO 31 I =1,20,N
         IF (L4A03(I)) THEN
         R4004    = R4004 + 1
         I4004    = I4004 + 1
         ENDIF
 31    CONTINUE
       DO 32 I =1,20,N
         IF (L4A05(I)) THEN
         R8003    = R8003 + 1
         R8004    = (R8004 + R8A04(I)) + (R8003 + R8A03(I))
         ENDIF
 32    CONTINUE
       DO 33 I =1,20,N
         IF (L4A04(I)) THEN
         C1604    = C1604 + 1
         ENDIF
 33    CONTINUE
       WRITE(6,*) '** ITEM1-C **'
       WRITE(6,*) I4003,R4003,I4004,R4004
       WRITE(6,*) R8003,R8004,C1604
       DO 40 I=1,20
         DO 41 J=1,20
            IF (L4A01(J)) THEN
              L4001=.NOT.L4A01(J)
              IF(L4001) GOTO 42
                L4A01(J) = .NOT. L1A01(J)
            ENDIF
 41       CONTINUE
 42       CONTINUE
          R4A01(I) = R4A02(I) + R4001
 40    CONTINUE
       WRITE(6,*) '** ITEM1-D **'
       WRITE(6,*) L4A01

       DO 60 I=1,20
         I4A03(I) = I4A03(I) / 3
         R4A03(I) = R4003 + R4A03(I) - (R4003 - 1.0 + I4A03(I))
         R8A03(I) = R8003 + R8A03(I) + (R8001 + R4A05(I))
         C16A3(I) = C1603 + C16A3(I) + (R4A05(I) / 1)
         I4A04(I) = I4004 - I4A04(I) * 2
         R4A04(I) = R4004 - R4A04(I) - 2
         R8A04(I) = R8004 - R8A04(I) - (R8A04(I) * R4001)
         C16A4(I) = C1604 - C16A4(I)
         I4A05(I) = I4004 * I4A05(I) * (I4A05(I) * I4A05(I))
         R4A05(I) = R4005 * R4A05(I) * (R4A05(I) * R4A05(I))
         R8A05(I) = R8005 + R8A05(I)
         C16A5(I) = C1605 + C16A5(I)
         R4005 = R4002 - R4A03(I) + R4004 - R4A05(I)
         R8005 = R8002 - R8A03(I) + R8004 - R8A05(I)
 60    CONTINUE
       WRITE(6,*) I4A03,R4A03,R8A03,C16A3
       WRITE(6,*) I4A04,R4A04,R8A04,C16A4
       WRITE(6,*) I4A05,R4A05,R8A05,C16A5
       WRITE(6,*) I4A05,R4A05,R8A05
       DO 61 I=1,20,2
         IF (I4005 .LT. I4A01(I)) THEN
           I4A02(I) = I4A03(I)  + I4004
           I4A03(I) = (I4A02(I) + I4004) + I4A02(I)
         ELSE
           I4A02(I) = I4A03(I) + I4A02(I) * 2
         ENDIF
 61    CONTINUE
       DO 62 I=1,20,2
         IF (R4005 .LT. R4A01(I)) THEN
           R4A02(I) = R4A03(I) + R4004
           R4A03(I) = (R4A02(I) + R4004) + R4A02(I)
         ELSE
           R4002 = R4A01(I) + R4A02(I) * 2
         ENDIF
 62    CONTINUE
       DO 63 I=1,20,2
         IF (R8005 .LT. R8A01(I)) THEN
           R8A02(I) = ( R8005 + R8A03(I)) + R8A03(I)
         ELSE
           R8A02(I) = R8A01(I) + R8A02(I) * 2
         ENDIF
 63    CONTINUE
       DO 64 I=1,20,2
         IF (I4005 .LE. I4A01(I)) THEN
           I4A03(I) = I4005
         ELSE
           I4003 = I4A01(I) + I4A02(I) * 2
         ENDIF
 64    CONTINUE
       DO 65 I=1,20,2
         IF (R4005 .EQ. R4A01(I)) THEN
           R4A03(I) = R4005
         ELSE
           R4003 = R4A01(I) + R4A02(I) * 2
         ENDIF
 65    CONTINUE
       DO 66 I=1,20,2
         IF (R8005 .NE. R8A01(I)) THEN
           R8A02(I) = R8A02(I) + R8002 - R8A03(I)
         ELSE
           R8002 = R8A01(I) + R8A02(I) * 2
         ENDIF
 66    CONTINUE
       DO 67 I=1,20,2
         IF (I4005 .GT. I4A01(I)) THEN
           I4A02(I) = I4005
         ELSE
           R8002 = R8A01(I) + R8A02(I) * 2
         ENDIF
 67    CONTINUE
       DO 68 I=1,20,2
         IF (I4005 .GE. I4A01(I)) THEN
           I4A02(I) = I4005
         ELSE
           R8A02(I) = R8A01(I) + R8A02(I) * 2
         ENDIF
 68    CONTINUE
       WRITE(6,*) '** ITEM2-B **'
       WRITE(6,*) I4A02,R4A02,R8A02,I4A03,R4A03,R8A03
       DO 69 I =1,20
         IF (I4001 .EQ. I4A01(I)) THEN
           I4A02(I) = I4001 + I4A01(I)
           I4A02(I) = I4002
         ELSE
           R4A02(I) = R4001 - R4A01(I)
           R4A02(I) = R4002
         ENDIF
         IF (R4A02(I) .GT. R4001) THEN
           L4A01(I) = L4001
           L4A02(I) = .NOT. L4A01(I)
           L4002    = L4A02(I)
         ELSE IF (R8001 .LT. R8A01(I)) THEN
                R8001 = R8A01(I) + R8001
         ENDIF
         IF ((I4002 + I4A02(I)) .LT. (R4001 - R4A02(I))) GOTO 69
         L4A01(I) = .NOT. L4A02(I)
 69    CONTINUE
       WRITE(6,*) I4A01
       call check(R4A01,RES1)
       WRITE(6,*) R8A01
       DO 80 I=1,20
         I4A01(I) = I4A02(I) * 2 ** 4 + I4A03(I) * 2 ** I4005
         R4A01(I) = R4A02(I) * 2 ** 2 + R4A03(I) * 2 ** R4005
         R8A01(I) = R8A02(I) * 2 ** 4 + R8A03(I) * 2 ** R8005
         C16A1(I) = C16A2(I) * 2 ** 2 + C16A3(I) * 2 ** R8005
 80    CONTINUE
       DO 90 I=1,20
         I4A02(I) = R4A03(I) / 2 ** 2 + R4A04(I) / 2
         R4A02(I) = R4A04(I) / 2 ** 3 + R4A03(I) / 2
         R8A02(I) = I4A02(I) / 2 ** 2 + I4A05(I) / 2
  90   CONTINUE
       WRITE(6,*) '** ITEM3 **'
       WRITE(6,*) I4A01 , I4A02
       call check(R4A01,RES2)
       call check(R4A02,RES3)
       WRITE(6,*) R8A01 , R8A02
       WRITE(6,*) C16A1
       STOP
       END

      subroutine check(calc,res)
      real calc(10),res(10)
      logical ngcheck/.FALSE./
      do i=1,10
         if (IS_EQUAL(calc(i), res(i))) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end

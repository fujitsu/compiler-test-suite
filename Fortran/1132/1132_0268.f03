!             CVCT6031            LEVEL=2        DATE=84.03.15
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6031                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . TUNING MESSAGES                          *C
!*  3. RESULTS        :                                             *C
!*  4. ENVIRONMENT    :  VTUNE                                      *C
!*  5. HISTORY        :  1984.1.05                                  *C
!********************************************************************C
!
PROGRAM CV6031
  type st1
     real A(10),B(10),C(10)
     REAL*8    Q(10)
     LOGICAL*4 LA(10)
     LOGICAL*1 LB(10)
  end type st1
  type(st1) :: str
  DATA str%LA/6*.TRUE.,4*.FALSE./
  DATA str%LB/6*.TRUE.,4*.FALSE./
  DATA str%A/0,1,2,2,1,0,4*0/,str%B/10*0./,str%C/1,2,3,4,5,6,7,8,9,10/
  DATA str%Q/0,1,2,2,1,0,4*0/
  !
  !  NO.1
  !
  DO  I=1,10
     IF ( str%LA(I) ) IF(str%A(I)-1.0) 10,20,30
20   str%B(I) = str%C(I)
     GO TO 10
30   str%B(I) = str%C(I)/2.0
10   CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !  NO.2
  !
  DO  I=1,10
     !VOCL STMT,IF(10)
     IF ( str%LA(I) ) IF(str%A(I)-1.0) 40,50,60
50   str%B(I) = str%C(I)
     GO TO 40
60   str%B(I) = str%C(I)/2.0
40   CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     !VOCL STMT,IF(10,20,70) 70,80,90
     IF ( str%LA(I) ) IF(str%A(I)-1.0) 70,80,90
80   str%B(I) = str%C(I)
     GO TO 70
90   str%B(I) = str%C(I)*2.0
70   CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     !VOCL STMT,IF(10),IF(10,20,70) 70,80,90
     IF ( str%LA(I) ) IF(str%A(I)-1.0) 100,110,120
110  str%B(I) = str%C(I)
     GO TO 100
120  str%B(I) = str%C(I)-2.0
100  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !            RC MASK
  !
  J=5
  DO  I=1,10
     IF ( str%LA(J) ) IF(str%A(I)-1.0) 130,140,150
140  str%B(I) = str%C(I)
     GO TO 130
150  str%B(I) = str%C(I)+2.0
130  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     IF ( str%LA(I) ) IF(str%A(J)-1.0) 160,170,180
170  str%B(I) = str%C(I)
     GO TO 160
180  str%B(I) = str%C(I)*2.0
160  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     IF ( str%LA(J) ) IF(str%A(J)-1.0) 161,171,181
171  str%B(I) = str%C(I)
     GO TO 161
181  str%B(I) = str%C(I)*2.0
161  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     !VOCL STMT,IF(90,5,5) 162,172,182
     IF ( str%LA(J) ) IF(str%A(I)-1.0) 162,172,182
172  str%B(I) = str%C(I)
     GO TO 162
182  str%B(I) = str%C(I)*2.0
162  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     !VOCL STMT,IF(20)
     IF ( str%LA(I) ) IF(str%A(J)-1.0) 163,173,183
173  str%B(I) = str%C(I)
     GO TO 163
183  str%B(I) = str%C(I)*2.0
163  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     !VOCL STMT,IF(10,80,10)  164,174,184
     IF ( str%LA(J) ) IF(str%A(J)-1.0) 164,174,184
174  str%B(I) = str%C(I)
     GO TO 164
184  str%B(I) = str%C(I)*2.0
164  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     IF ( str%LB(I) ) IF(str%A(I)-1.0) 165,175,185
175  str%B(I) = SIN(str%C(I))
     GO TO 165
185  str%B(I) = str%C(I)**2.0
165  CONTINUE
  enddo
  WRITE(6,*) str%B
  !
  !
  !
  DO  I=1,10
     IF ( str%A(I).GT.str%B(I) ) IF(str%Q(I)-1.0) 166,176,186
176  str%B(I) = SIN(str%C(I))
     GO TO 166
186  str%B(I) = str%C(I)**2.0
166  CONTINUE
  enddo
  WRITE(6,*) str%B
  STOP
END PROGRAM CV6031

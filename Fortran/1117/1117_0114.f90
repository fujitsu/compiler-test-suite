call test01()
call test02()
call test03()
call test04()
rewind 6
print *,'pass'
end

subroutine test01()
      INTEGER*4  A(10),B(10,10),C(10)
      INTEGER*4  I,J
      DATA      (C(I),I=1,10,1)/10*1/
      common /com/ a,b,c,i,j
      PARAMETER(IC=10,JC=5)
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel private(/com/)
      C = 1
    1 I=1
      IF (I.EQ.1) THEN
          J=1
        ELSE
          GOTO 1
      END IF
      IF (J*1) 10,10,10
   10 WRITE(9,*) '**** TEST NO. 1 OK ****'
      DO 20 I=1,10,1
         A(I)=I
   20 CONTINUE
      IF(A(1)) 25,25,25
   15 GOTO 2000
   25 WRITE(9,*) '**** TEST NO. 2 OK ****'
      IF(A(5)) 15,30,30
   30 WRITE(9,*) '**** TEST NO. 3 OK ****'
      DO 35 I=1,IC,1
         DO 35 J=1,JC,1
            B(I,J)=C(I)+J
   35 CONTINUE
      IF (B(IC,JC)) 50,15,50
   50 WRITE(9,*) '**** TEST NO. 4 OK ****'
      DO 52 I=1,10
         IF(I+10) 55,55,60
   52 CONTINUE
   55 GOTO 2000
   60 WRITE(9,*) '**** TEST NO. 5 OK ****'
      R=1
      IF(R*3) 15,15,70
   70 WRITE(9,*) '**** TEST NO. 6 OK ****'
      IF(C(1+1)) 80,55,80
   80 WRITE(9,*) '**** TEST NO. 7 OK ****'
      J=10*1-1
      DO 100 I=1,10,1
         IF((((-1)))) 95,55,55
   95    WRITE(9,*) '**** TEST NO. 8 OK ****'
         IF (I.EQ.1) THEN
             J=1
             ELSE
             GOTO 110
             END IF
  100 CONTINUE
  110 DO 111 I=1,10
         A(I)=C(I)+1
         IF (I.EQ.10) IF (-1) 115,15,55
  111 CONTINUE
  115 WRITE(9,*) '**** TEST NO. 9 OK ****'
      IF ((-1)) 120,55,15
  120 WRITE(9,*) '**** TEST NO.10 OK ****'
      IF (1) 15,55,130
  130 WRITE(9,*) '**** TEST NO.11 OK ****'
      IF (C(1)-1) 15,136,15
  135 GOTO 2000
  136 WRITE(9,*) '**** TEST NO.12 OK ****'
      IF ((((-1)))) 140,15,15
  138 GOTO 2000
  140 WRITE(9,*) '**** TEST NO.13 OK ****'
      J=1
  145 IF (J.EQ.1) THEN
         J=J+2
         ELSE
         GOTO 190
      ENDIF
      IF (-1) 150,150,135
  160 WRITE(9,*) '**** TEST NO.15 OK ****'
      GOTO 145
  190 continue
      GOTO 2001
  150 WRITE(9,*) '**** TEST NO.14 OK ****'
      IF (J) 15,55,160
2000  print *,"fail"
2001  rewind 6

!$omp endparallel 
end
subroutine test04()
integer i
common /com04/i
allocatable :: arr
integer ,dimension (:) :: arr
!$omp parallel private(/com04/)
allocate(arr(10),stat=i)
!$omp endparallel 
end

subroutine test03()
integer i,j,k
common /com03/i,j,k
namelist /na/ i,j,k
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel shared(/com03/)
i=1
j=2
k=3
rewind k
write(k,nml=na)
!$omp endparallel 
rewind 6
end 

subroutine test02()
integer i,j,k
common /com02/i,j,k
!$omp parallel private(/com02/)
!$omp single
assign 10 to i
goto i
10 continue
assign 20 to i
j=3
goto (40,20,30) j
20 print *,"fail"
40 print *,"fail"
30 continue
assign 100 to i
goto i,(200,300,100)
300 print *,"fail"
200 print *,"fail"
100 continue
assign 333 to i
rewind 10
write(10,*) 1
rewind 10
read (10,*,end=333) k
333 continue
!$omp end single
!$omp end parallel
rewind 6
end subroutine

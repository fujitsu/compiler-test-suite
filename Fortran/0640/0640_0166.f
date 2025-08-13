      PROGRAM MAIN
      REAL    *4  RA (20),RB (20,20),RC (20,20,20),RD (10,10,10,10)
      REAL    *8  DA (20),DB (20,20)
      COMPLEX *8  CSUM(20),CEA(20),CEB(20,20),CC,res(20)
      COMPLEX *16         CDB(20,20)
      INTEGER *4  IL(10)
      DATA  RA/20*1./,RB/400*1./,RC/8000*1./,RD/10000*1./
      DATA  DA/20*1./,DB/400*1./,CEA/20*(1.,1.)/,RMX1,RMX2/0.,0./
      DATA  CDB/400*(1.,1.)/,CEB/400*(1.,1.)/
      DATA  CSUM/20*0./
      DATA  IL/1,2,3,4,5,6,7,8,9,10/
      data res/(-1.,56.),(-1.,56.),(-1.,56.414215),
     +     (-1.,57.650283),(-1.,58.886352),(-1.,60.12242),
     +     (-1.,61.35849),(-1.,62.59456),(-1.,63.830627),
     +     (-1.,65.066696),(-1.,65.066696),(-1.,65.066696),
     +     (-1.,65.066696),(-1.,65.066696),(-1.,65.066696),
     +     (-1.,65.066696),(-1.,65.066696),(-1.,65.066696),
     +     (-1.,65.066696),(-1.,65.066696)/

      DO 11 I1=1,20
        DO 12 I2=2,9
          RB(I1,I2)=DB(I1,I2)*RA(I1)+DB(I2,I1)
          RS1=RB(I1,I2-1)
          CEB(I2,I1)=CMPLX(RS1,RA(I2))
          CI=RB(I1,I2)*RC(I2,I1,I1)+RB(I1,I2)*RC(I1,I2,I1)
     +      +RB(I1,I2)*RC(I1,I1,I2)
        CC=CEA(I1)*CEA(I2-1)
          CR=IMAG(CONJG(CC))
          CDB(I1,I2)=CMPLX(CR,CI)
   12   CSUM(I1)=CSUM(I1)+CEB(I2,I1)+CDB(I1,I2)
        RA(I1)=ABS(CEB(I1,I1))
        DA(I1)=ABS(CDB(I1,I1))
        DIF1=RMX1-RA(I1)
        DIF2=RMX2-DA(I1)
        IF(DIF1) 14,15,15
   14     RMX1=RA(I1)
          J1=I1
   15   IF(DIF2) 16,11,11
   16     RMX2=DA(I1)
          J2=I1
   11 CONTINUE
      WRITE(6,*) 'CSUM='
      call check(CSUM,res)
      WRITE(6,1001) 'RMX1=',RMX1
      WRITE(6,1001) 'RMX2=',RMX2
      WRITE(6,1001) 'J1=',J1
      WRITE(6,1001) 'J2=',J2
      WRITE(6,1001) 'RB=',RB
      WRITE(6,1001) 'CEB=',CEB
      WRITE(6,1002) 'CDB=',CDB
 1001 FORMAT(' ',A,(6G13.6))
 1002 FORMAT(' ',A,(3G23.15))

      J1=1
      DO 21 I1=1,10
      DO 22 I2=1,10
        DO 23 I3=1,10
          RC(I3,I1,I2)=RC(I3,I1,I2)-1.0
   23   CONTINUE
        RB(I2,I1)=RB(I2*J1+1,I1)
   22 CONTINUE
   21 CONTINUE
      WRITE(6,1001)'RB=',RB
      WRITE(6,1001)'RC=',RC

      J1=1
      DO31 I1=1,10
      DO32 I2=1,10
       IF(RA(I2).GT.4.) THEN
         RB(I2,I1)=0.0
       ELSE
         RB(I2,I1)=RA(I2)+RA(I1)
       ENDIF
       DO 33 I3=1,10
       DO 34 I4=1,I1*J1-1+IL(1)
         IF(RD(I3,I4,I2,I1).EQ.1.) THEN
           RD(I3,I4,I2,I1)=RA(I1)*RA(I2)+RA(I3)*RA(I4)
         ELSE
           RD(I3,I4,I2,I1)=0.0
         ENDIF
   34  CONTINUE
   33  CONTINUE
       DB(I2,I1)=DPROD(RD(I2,I1,I2,I1),RA(I1))
   32 CONTINUE
   31 CONTINUE
      WRITE(6,1001) 'RB=',RB
      WRITE(6,1001) 'RD=',RD
      WRITE(6,1002) 'DB=',DB
      STOP
      END

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-6).or.(abs(a-b)/abs(a)<10E-6))
      subroutine check(calc,res)
      complex*8 calc(20),res(20)
      real*4 re1,im1,re2,im2
      logical ngcheck/.FALSE./
      do i=1,20
         re1 = real(calc(i))
         im1 = imag(calc(i))
         re2 = real(res(i))
         im2 = imag(res(i))
         if (IS_EQUAL(re1, re2)) then
         else
            ngcheck = .TRUE.
         endif
         if (IS_EQUAL(im1, im2)) then
         else
            ngcheck = .TRUE.
         endif
      enddo
      if (ngcheck) write(6,*) calc
      end

      PROGRAM MAIN
      REAL*4  RC(10)
      REAL*8  DD(10,10,10)
      DATA    RC/10*1.0/
      DATA    DD/1000*1.0/

          RMIN=0.
          J=0
          DO 30 I3=2,8
            DIF=RMIN-RC(I3)
            IF(DIF) 30,30,32
   32       RMIN=RC(I3)
            J=I3
   30     CONTINUE
          WRITE(6,*) 'RMIN=',RMIN

      I1=3
      I2=8
         ID2=1
          ID3=8
          RMIN=0.
          RMX=0.
          J=0
          DO 130 I3=2,8
            DIF=RMIN-RC(I3)
            RMX=MAX(RMX,DD(I1,I2,ID3))
            ID3=ID3-1
            IF(DIF) 130,130,132
  132       RMIN=RC(I3)
            J=I3
  130     CONTINUE
          WRITE(6,*) 'RMIN=',RMIN
          WRITE(6,*) 'RMX=',RMX
      STOP
      END

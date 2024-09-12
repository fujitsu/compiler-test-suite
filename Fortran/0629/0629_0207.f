      COMPLEX*16  CD11(10),CD12(10),CD13(10),CDS1,CDS2,CDS3
      COMPLEX*16  CD21(10,10),CD22(10,10),CD23(10,10)
      COMPLEX*16  CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)
      COMPLEX*16  CD52(5,5,5,5,5)
      COMPLEX*16  CD62(5,3,3,3,3,2)
      COMPLEX*8   CE11(10),CE12(10),CE13(10),CES1,CES2,CES3
      COMPLEX*8   CE21(10,10),CE22(10,10),CE23(10,10)

      CALL INITC(
     &           CD11   ,CD12   ,CD13   ,CDS1,CDS2,CDS3,
     &           CD21      ,CD22      ,CD23          ,
     &           CD31         ,CD32         ,CD33    ,
     &           CD52                 ,
     &           CD62               ,
     &           CE11   ,CE12   ,CE13   ,CES1,CES2,CES3,
     &           CE21       ,CE22       ,CE23)

      WRITE(6,*) "CE21=",CE21
      END

      SUBROUTINE INITC(
     &           CD11   ,CD12   ,CD13   ,CDS1,CDS2,CDS3,
     &           CD21      ,CD22      ,CD23          ,
     &           CD31          ,CD32          ,CD33    ,
     &           CD52                 ,
     &           CD62               ,
     &           CE11   ,CE12   ,CE13   ,CES1,CES2,CES3,
     &           CE21      ,CE22      ,CE23)

      COMPLEX*16 CD11(10),CD12(10),CD13(10),CDS1,CDS2,CDS3
      COMPLEX*16 CD21(10,10),CD22(10,10),CD23(10,10)
      COMPLEX*16 CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)
      COMPLEX*16 CD52(5,5,5,5,5)
      COMPLEX*16 CD62(5,3,3,3,3,2)
      COMPLEX*8  CE11(10),CE12(10),CE13(10),CES1,CES2,CES3
      COMPLEX*8  CE21(10,10),CE22(10,10),CE23(10,10)

      DO 10 I1=1,10
       CD11(I1)=1
       DO 20 I2=1,10
         CE21(I1,I2)=10
 20    CONTINUE
 10   CONTINUE

      print *,CE21

      I1=1
      DO 120 I2=2,10
         CD21(I1,I2)=CD11(I1)/I2
         DO 130 I3=1,10

            DO 140 I4=1,4
               CDS2=2
               DO 150 I5=1,5
                  CD52(1,2,3,I4,I5)=CDS2
                  DO 160 I6=1,2
                     IF(I4.LE.3.AND.I5.LE.3) THEN
                        CD62(1,2,3,I4,I5,I6)=(100.5, 0.0)
                     ENDIF
 160              CONTINUE
 150           CONTINUE
 140        CONTINUE

            CD33(I1,I2,I3)=CDS2
 130     CONTINUE
 120  CONTINUE

      RETURN
      END

      COMPLEX*16  CD11(10),CD12(10),CD13(10),CDS2,CDS3
      COMPLEX*16  CD21(10,10),CD22(10,10),CD23(10,10)
      COMPLEX*16  CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)
      COMPLEX*16  CD41(8,8,8,8),CD42(8,8,8,8)
      CALL INITC(CD11,CD12,CD13,CDS2,CDS3,
     &           CD21,CD22,CD23,CD31,CD32,CD33,CD41,CD42)
      DO I1=4,8
      DO I2=4,8
      DO I3=4,8
      DO I4=4,8
        WRITE(6,*) I1,' ',I2,' ',I3,' ',I4,' ',CD41(I1,I2,I3,I4)
      ENDDO
      ENDDO
      ENDDO
      ENDDO
      STOP
      END
      SUBROUTINE INITC(CD11,CD12,CD13,CDS2,CDS3,
     &  CD21,CD22,CD23,CD31,CD32,CD33,CD41,CD42)
      COMPLEX*16 CD11(10),CD12(10),CD13(10),CDS2,CDS3
      COMPLEX*16 CD21(10,10),CD22(10,10),CD23(10,10)
      COMPLEX*16 CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)
      COMPLEX*16 CD41(8,8,8,8),CD42(8,8,8,8)
      DO 99997 I=1,10                                                   
       CD11(I)=0                                                        
       CD12(I)=0                                                        
       CD13(I)=0                                                        
       DO 99997 J=1,10                                                  
        CD21(I,J)=0                                                     
        CD22(I,J)=0                                                     
        CD23(I,J)=0                                                     
        DO 99997 K=1,10                                                 
         CD31(I,J,K)=0                                                  
         CD32(I,J,K)=0                                                  
         CD33(I,J,K)=0                                                  
99997 CONTINUE                                                          
      DO 99996 I=1,8                                                    
       DO 99996 J=1,8                                                   
        DO 99996 K=1,8                                                  
         DO 99996 L=1,8
          CD41(I,J,K,L)=0
          CD42(I,J,K,L)=0
99996 CONTINUE
      DO 110 I1=1,8
        CD11(I1)=(1.0,0.5)
        DO 120 I2=2,8
          DO 130 I3=1,8
            CD31(I3,I2,I1)=(0.0,0.0)
            DO 140 I4=1,4
              CDS2=CMPLX(I3,I4)
              IF (I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                CD41(I1,I4,I3,I2)=CDS2
              ENDIF
140         CONTINUE
130       CONTINUE
120     CONTINUE
110   CONTINUE
      RETURN
      END

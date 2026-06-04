      PROGRAM IFP045
      POINTER (PD11,D1),(PD12,D12),(PD13,D13)
      POINTER (PD21,D21),(PD22,D22),(PD23,D23)
      POINTER (PD31,D31),(PD32,D32),(PD33,D33)
      POINTER (PD41,D41),(PD42,D42)
      POINTER (PD51,D51),(PD52,D52)
      POINTER (PD61,D61),(PD62,D62)
      POINTER (PE11,E11),(PE12,E12),(PE13,E13)
      POINTER (PE21,E21),(PE22,E22),(PE23,E23)
      POINTER (PE31,E31),(PE32,E32),(PE33,E33)
      POINTER (PE41,E41),(PE42,E42)
      POINTER (PE51,E51),(PE52,E52)
      POINTER (PE61,E61),(PE62,E62)
      POINTER (PCD11,CD11),(PCD12,CD12),(PCD13,CD13)
      POINTER (PCD21,CD21),(PCD22,CD22),(PCD23,CD23)
      POINTER (PCD31,CD31),(PCD32,CD32),(PCD33,CD33)
      POINTER (PCD41,CD41),(PCD42,CD42)
      POINTER (PCD51,CD51),(PCD52,CD52)
      POINTER (PCD61,CD61),(PCD62,CD62)
      POINTER (PCE11,CE11),(PCE12,CE12),(PCE13,CE13)
      POINTER (PCE21,CE21),(PCE22,CE22),(PCE23,CE23)
      POINTER (PCE31,CE31),(PCE32,CE32),(PCE33,CE33)
      POINTER (PCE41,CE41),(PCE42,CE42)
      POINTER (PCE51,CE51),(PCE52,CE52)
      POINTER (PCE61,CE61),(PCE62,CE62)
      POINTER (PN11,N11),(PN12,N12),(PN13,N13)
      POINTER (PN21,N21),(PN22,N22),(PN23,N23)
      POINTER (PN31,N31),(PN32,N32),(PN33,N33)
      POINTER (PN41,N41),(PN42,N42)
      POINTER (PN51,N51),(PN52,N52)
      POINTER (PN61,N61),(PN62,N62)
      POINTER (PL11,L11),(PL12,L12),(PL13,L13)
      POINTER (PL21,L21),(PL22,L22),(PL23,L23)
      POINTER (PL31,L31),(PL32,L32),(PL33,L33)
      POINTER (PL41,L41),(PL42,L42)
      POINTER (PL51,L51),(PL52,L52)
      POINTER (PL61,L61),(PL62,L62)
      REAL*8      D11(10),D12(10),D13(10),DS1,DS2,DS3
      REAL*8      D21(10,10),D22(10,10),D23(10,10)
      REAL*8      D31(10,10,10),D32(10,10,10),D33(10,10,10) 
      REAL*8      D41(8,8,8,8),D42(8,8,8,8)
      REAL*8      D51(5,5,5,5,5),D52(5,5,5,5,5)
      REAL*8      D61(5,3,3,3,3,2),D62(5,3,3,3,3,2)
      REAL*4      E11(10),E12(10),E13(10),ES1,ES2,ES3
      REAL*4      E21(10,10),E22(10,10),E23(10,10)
      REAL*4      E31(10,10,10),E32(10,10,10),E33(10,10,10)
      REAL*4      E41(8,8,8,8),E42(8,8,8,8)
      REAL*4      E51(5,5,5,5,5),E52(5,5,5,5,5)
      REAL*4      E61(5,3,3,3,3,2),E62(5,3,3,3,3,2)
      COMPLEX*16  CD11(10),CD12(10),CD13(10),CDS1,CDS2,CDS3
      COMPLEX*16  CD21(10,10),CD22(10,10),CD23(10,10)
      COMPLEX*16  CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)
      COMPLEX*16  CD41(8,8,8,8),CD42(8,8,8,8)
      COMPLEX*16  CD51(5,5,5,5,5),CD52(5,5,5,5,5)
      COMPLEX*16  CD61(5,3,3,3,3,2),CD62(5,3,3,3,3,2)
      COMPLEX*8   CE11(10),CE12(10),CE13(10),CES1,CES2,CES3
      COMPLEX*8   CE21(10,10),CE22(10,10),CE23(10,10)
      COMPLEX*8   CE31(10,10,10),CE32(10,10,10),CE33(10,10,10)
      COMPLEX*8   CE41(8,8,8,8),CE42(8,8,8,8)
      COMPLEX*8   CE51(5,5,5,5,5),CE52(5,5,5,5,5)
      COMPLEX*8   CE61(5,3,3,3,3,2),CE62(5,3,3,3,3,2)
      INTEGER*4   N11(10),N12(10),N13(10),NS1,NS2,NS3
      INTEGER*4   N21(10,10),N22(10,10),N23(10,10)
      INTEGER*4   N31(10,10,10),N32(10,10,10),N33(10,10,10)
      INTEGER*4   N41(8,8,8,8),N42(8,8,8,8)
      INTEGER*4   N51(5,5,5,5,5),N52(5,5,5,5,5)
      INTEGER*4   N61(5,3,3,3,3,2),N62(5,3,3,3,3,2)
      LOGICAL*4   L11(10),L12(10),L13(10),LS1,LS2,LS3
      LOGICAL*4   L21(10,10),L22(10,10),L23(10,10)
      LOGICAL*4   L31(10,10,10),L32(10,10,10),L33(10,10,10)
      LOGICAL*4   L41(8,8,8,8),L42(8,8,8,8)
      LOGICAL*4   L51(5,5,5,5,5),L52(5,5,5,5,5)
      LOGICAL*4   L61(5,3,3,3,3,2),L62(5,3,3,3,3,2)
      PD11= MALLOC(10*8)
      PD12= MALLOC(10*8)
      PD13= MALLOC(10*8)
      PD21= MALLOC(10*10*8)
      PD22= MALLOC(10*10*8)
      PD23= MALLOC(10*10*8)
      PD31= MALLOC(10*10*10*8)
      PD32= MALLOC(10*10*10*8)
      PD33= MALLOC(10*10*10*8)
      PD41= MALLOC(8**4*8)
      PD42= MALLOC(8**4*8)
      PD51= MALLOC(5**5*8)
      PD52= MALLOC(5**5*8)
      PD61= MALLOC(5*3**4*2*8)
      PD62= MALLOC(5*3**4*2*8)
      PE11= MALLOC(10*8)
      PE12= MALLOC(10*8)
      PE13= MALLOC(10*8)
      PE21= MALLOC(10*10*8)
      PE22= MALLOC(10*10*8)
      PE23= MALLOC(10*10*8)
      PE31= MALLOC(10*10*10*8)
      PE32= MALLOC(10*10*10*8)
      PE33= MALLOC(10*10*10*8)
      PE41= MALLOC(8**4*8)
      PE42= MALLOC(8**4*8)
      PE51= MALLOC(5**5*8)
      PE52= MALLOC(5**5*8)
      PE61= MALLOC(5*3**4*2*8)
      PE62= MALLOC(5*3**4*2*8)
      PCD11= MALLOC(10*16)
      PCD12= MALLOC(10*16)
      PCD13= MALLOC(10*16)
      PCD21= MALLOC(10*10*16)
      PCD22= MALLOC(10*10*16)
      PCD23= MALLOC(10*10*16)
      PCD31= MALLOC(10*10*10*16)
      PCD32= MALLOC(10*10*10*16)
      PCD33= MALLOC(10*10*10*16)
      PCD41= MALLOC(8**4*16) 
      PCD42= MALLOC(8**4*16)
      PCD51= MALLOC(5**5*16)     
      PCD52= MALLOC(5**5*16)     
      PCD61= MALLOC(5*3**4*2*16)  
      PCD62= MALLOC(5*3**4*2*16)  
      PCE11= MALLOC(10*16)
      PCE12= MALLOC(10*16)     
      PCE13= MALLOC(10*16)    
      PCE21= MALLOC(10*10*16)   
      PCE22= MALLOC(10*10*16)   
      PCE23= MALLOC(10*10*16)  
      PCE31= MALLOC(10*10*10*16)  
      PCE32= MALLOC(10*10*10*16) 
      PCE33= MALLOC(10*10*10*16) 
      PCE41= MALLOC(8**4*16)    
      PCE42= MALLOC(8**4*16)  
      PCE51= MALLOC(5**5*16)
      PCE52= MALLOC(5**5*16)   
      PCE61= MALLOC(5*3**4*2*16)
      PCE62= MALLOC(5*3**4*2*16)
      PN11= MALLOC(10*16)    
      PN12= MALLOC(10*16)      
      PN13= MALLOC(10*16)        
      PN21= MALLOC(10*10*16)    
      PN22= MALLOC(10*10*16)    
      PN23= MALLOC(10*10*16)     
      PN31= MALLOC(10*10*10*16) 
      PN32= MALLOC(10*10*10*16)  
      PN33= MALLOC(10*10*10*16) 
      PN41= MALLOC(8**4*16)  
      PN42= MALLOC(8**4*16) 
      PN51= MALLOC(5**5*16)    
      PN52= MALLOC(5**5*16) 
      PN61= MALLOC(5*3**4*2*16)
      PN62= MALLOC(5*3**4*2*16) 
      PL11= MALLOC(10*16)  
      PL12= MALLOC(10*16)    
      PL13= MALLOC(10*16)    
      PL21= MALLOC(10*10*16)  
      PL22= MALLOC(10*10*16)  
      PL23= MALLOC(10*10*16)   
      PL31= MALLOC(10*10*10*16)  
      PL32= MALLOC(10*10*10*16)  
      PL33= MALLOC(10*10*10*16)   
      PL41= MALLOC(8**4*16)      
      PL42= MALLOC(8**4*16)      
      PL51= MALLOC(5**5*16)      
      PL52= MALLOC(5**5*16)      
      PL61= MALLOC(5*3**4*2*16)  
      PL62= MALLOC(5*3**4*2*16)   
      CALL INITR(
     &            PD11   ,PD12   ,PD13   ,DS1,DS2,DS3,
     &            PD21      ,PD22      ,PD23         ,
     &            PD31         ,PD32         ,PD33   ,
     &            PD41        ,PD42                  ,
     &            PD51          ,PD52                ,
     &            PD61            ,PD62              ,
     &            PE11   ,PE12   ,PE13   ,ES1,ES2,ES3,
     &            PE21      ,PE22      ,PE23       ,  
     &            PE31         ,PE32         ,PE33   ,
     &            PE41        ,PE42        ,          
     &            PE51          ,PE52      ,          
     &            PE61            ,PE62)              
      CALL INITC(
     &           PCD11  ,PCD12  ,PCD13  ,CDS1,CDS2,CDS3, 
     &           PCD21     ,PCD22     ,PCD23         ,
     &           PCD31        ,PCD32        ,PCD33   ,
     &           PCD41       ,PCD42                  ,
     &           PCD51         ,PCD52                ,
     &           PCD61           ,PCD62              ,
     &           PCE11  ,PCE12  ,PCE13  ,CES1,CES2,CES3,
     &           PCE21      ,PCE22      ,PCE23       ,
     &           PCE31        ,PCE32         ,PCE33   ,
     &           PCE41        ,PCE42        ,         
     &           PCE51          ,PCE52      ,         
     &           PCE61            ,PCE62)             
      CALL INITIL(
     &            PN11   ,PN12   ,PN13   ,NS1,NS2,NS3, 
     &            PN21      ,PN22      ,PN23         ,
     &            PN31         ,PN32         ,PN33   ,
     &            PN41        ,PN42                  ,
     &            PN51          ,PN52                ,
     &            PN61            ,PN62              ,
     &            PL11   ,PL12   ,PL13   ,LS1,LS2,LS3,
     &            PL21      ,PL22      ,PL23       ,  
     &            PL31         ,PL32         ,PL33   ,
     &            PL41        ,PL42        ,          
     &            PL51          ,PL52      ,          
     &            PL61            ,PL62)              
      DATA N/2/ 
C
      DO 10 I1=1,8,N 
       LS1=I1.GT.5  
       L11(I1)=LS1          
       DO 20 I2=1,8,2   
        NS2=I1+I2*1         
        N22(I2,I1)=NS2+1  
        DO 30 I3=1,8     
         NS1=NS3*I3-2   
         DO 40 I4=1,8    
          IF(.NOT.LS1) N41(I1,I2,I3,I4)=NS2+NS1-NS3   
 40      CONTINUE     
 30     CONTINUE   
 20    CONTINUE 
       L12(I1)=LS1.OR.N21(I1,1).GT.2.
 10   CONTINUE 
      WRITE(6,1) N41  
      WRITE(6,*) LS1  
      WRITE(6,1) N22    
      WRITE(6,*) L11    
      WRITE(6,1) NS3   
      WRITE(6,1) N21  
      WRITE(6,*) L12 
C
      DO 110 I1=2,8,2     
       CDS1=CMPLX(SIN(DFLOAT(I1)),COS(DFLOAT(I1)))    
       DO 120 I2=1,8         
        DO 130 I3=1,8   
         DO 140 I4=1,8   
          NS2=MIN(I1/2,4) 
          CD41(I1,I2,I3,I4)=CDS1*NS1
140      CONTINUE         
         D31(I1,I2,I3)=-CDS1*CDS1-NS2
         D31(I1+1,I2,I3)=COS(DFLOAT(I1+I1))           
130     CONTINUE         
120    CONTINUE           
110   CONTINUE              
      WRITE(6,3) CD41    
      WRITE(6,*) D31    

C
    1 FORMAT(8Z10)        
    2 FORMAT(4Z20)         
    3 FORMAT(4Z20,4Z20) 
C
      STOP    
      END    
C
C
      SUBROUTINE INITR( 
     &            PD11   ,PD12   ,PD13   ,DS1,DS2,DS3,
     &            PD21      ,PD22      ,PD23         ,
     &            PD31         ,PD32         ,PD33   ,
     &            PD41        ,PD42                  ,
     &            PD51          ,PD52                ,
     &            PD61            ,PD62              ,
     &            PE11   ,PE12   ,PE13   ,ES1,ES2,ES3,
     &            PE21      ,PE22      ,PE23       ,  
     &            PE31         ,PE32         ,PE33   ,
     &            PE41        ,PE42        ,          
     &            PE51          ,PE52      ,          
     &            PE61            ,PE62)              
      POINTER (PD11,D1),(PD12,D12),(PD13,D13)         
      POINTER (PD21,D21),(PD22,D22),(PD23,D23)        
      POINTER (PD31,D31),(PD32,D32),(PD33,D33)        
      POINTER (PD41,D41),(PD42,D42)
      POINTER (PD51,D51),(PD52,D52)
      POINTER (PD61,D61),(PD62,D62)
      POINTER (PE11,E11),(PE12,E12),(PE13,E13)        
      POINTER (PE21,E21),(PE22,E22),(PE23,E23)        
      POINTER (PE31,E31),(PE32,E32),(PE33,E33)        
      POINTER (PE41,E41),(PE42,E42)
      POINTER (PE51,E51),(PE52,E52) 
      POINTER (PE61,E61),(PE62,E62)
      REAL*8      D11(10),D12(10),D13(10),DS1,DS2,DS3 
      REAL*8      D21(10,10),D22(10,10),D23(10,10)    
      REAL*8      D31(10,10,10),D32(10,10,10),D33(10,10,10)
      REAL*8      D41(8,8,8,8),D42(8,8,8,8)        
      REAL*8      D51(5,5,5,5,5),D52(5,5,5,5,5)       
      REAL*8      D61(5,3,3,3,3,2),D62(5,3,3,3,3,2)   
      REAL*4      E11(10),E12(10),E13(10),ES1,ES2,ES3 
      REAL*4      E21(10,10),E22(10,10),E23(10,10)    
      REAL*4      E31(10,10,10),E32(10,10,10),E33(10,10,10) 
      REAL*4      E41(8,8,8,8),E42(8,8,8,8)         
      REAL*4      E51(5,5,5,5,5),E52(5,5,5,5,5)       
      REAL*4      E61(5,3,3,3,3,2),E62(5,3,3,3,3,2)   
      PD11=  MALLOC(10*8)  
      PD12=  MALLOC(10*8)  
      PD13=  MALLOC(10*8)
      PD21=  MALLOC(10*10*8)  
      PD22=  MALLOC(10*10*8)
      PD23=  MALLOC(10*10*8) 
      PD31=  MALLOC(10*10*10*8) 
      PD32=  MALLOC(10*10*10*8)
      PD33=  MALLOC(10*10*10*8)
      PD41=  MALLOC(8**4*8)
      PD42=  MALLOC(8**4*8) 
      PD51=  MALLOC(5**5*8)
      PD52=  MALLOC(5**5*8)
      PD61=  MALLOC(5*3**4*2*8)
      PD62=  MALLOC(5*3**4*2*8)
      PE11=  MALLOC(10*8)
      PE12=  MALLOC(10*8) 
      PE13=  MALLOC(10*8)
      PE21=  MALLOC(10*10*8) 
      PE22=  MALLOC(10*10*8)  
      PE23=  MALLOC(10*10*8)
      PE31=  MALLOC(10*10*10*8)
      PE32=  MALLOC(10*10*10*8)
      PE33=  MALLOC(10*10*10*8)
      PE41=  MALLOC(8**4*8)
      PE42=  MALLOC(8**4*8) 
      PE51=  MALLOC(5**5*8)
      PE52=  MALLOC(5**5*8)
      PE61=  MALLOC(5*3**4*2*8)
      PE62=  MALLOC(5*3**4*2*8)
C 
      DO 99999 I=1,10 
        E11(I)=0    
        E12(I)=0
        E13(I)=0 
       DO 99999 J=1,10
         E21(I,J)=0
         E22(I,J)=0
         E23(I,J)=0
        DO 99999 K=1,10 
          E31(I,J,K)=0 
          E32(I,J,K)=0  
          E33(I,J,K)=0
99999 CONTINUE 
      DO 99998 I=1,8        
       DO 99998 J=1,8 
        DO 99998 K=1,8 
         DO 99998 L=1,8
           E41(I,J,K,L)=0
           E42(I,J,K,L)=0 
          DO 99998 M=1,5 
           IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
              E51(I,J,K,L,M)=0
              E52(I,J,K,L,M)=0
            ENDIF      
           DO 99998 N=1,2  
            IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
              E61(I,J,K,L,M,N)=0
              E62(I,J,K,L,M,N)=0
             ENDIF
99998 CONTINUE 
      DO 99997 I=1,10  
        D11(I)=0
        D12(I)=0
        D13(I)=0 
       DO 99997 J=1,10 
         D21(I,J)=0   
         D22(I,J)=0 
         D23(I,J)=0  
        DO 99997 K=1,10
          D31(I,J,K)=0
          D32(I,J,K)=0
          D33(I,J,K)=0
99997 CONTINUE 
      DO 99996 I=1,8
       DO 99996 J=1,8     
        DO 99996 K=1,8  
         DO 99996 L=1,8 
           D41(I,J,K,L)=0 
           D42(I,J,K,L)=0 
          DO 99996 M=1,5
           IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
              D51(I,J,K,L,M)=0 
              D52(I,J,K,L,M)=0 
             ENDIF   
           DO 99996 N=1,2 
            IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN 
              D61(I,J,K,L,M,N)=0 
              D62(I,J,K,L,M,N)=0 
             ENDIF 
99996 CONTINUE 
      ES3=3.5 
      DO 10 I1=1,10  
        E11(I1)=I1 
        ES1=I1  
        E12(I1)=E11(I1)*ES1      
        E13(I1)=E12(I1)
       DO 20 I2=2,10  
         E21(I1,I2)=E11(I1)/I2  
         E22(I1,I2)=I2*I1 
         ES1=I2/I1    
         IF(I2.EQ.10) E22(I1,1)=0.  
         E21(I1,I2-1)=E21(I1,I2)*ES1
         E23(I1,I2-1)=0.5    
        DO 30 I3=1,10     
          E31(I3,I2,I1)=0.  
          E32(I3,I1,I2)=3.5 
         DO 40 I4=1,4   
           ES2=I3+I4   
           IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN    
             E41(I1,I4,I3,I2)=ES2  
             E42(I1,I4+4,I2,I3)=ES2/4. 
           ENDIF     
          DO 50 I5=1,5   
            IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN 
              E51(I1,I2,I3,I4,I5)=ES2
              E52(I1,I2,I3,I4,I5)=ES2/2.
            ENDIF    
           DO 60 I6=1,2 
            IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3)
     &        THEN         
               E61(I1,I2,I3,I4,I5,I6)=0.5
               E62(I1,I2,I3,I4,I5,I6)=100.5 
             ENDIF     
 60        CONTINUE 
 50       CONTINUE  
           ES2=I4/2
 40      CONTINUE   
          E33(I1,I2,I3)=ES2  
 30     CONTINUE 
 20    CONTINUE 
 10   CONTINUE
C
C
      DS3=3.5 
      DO 110 I1=1,10 
        D11(I1)=I1 
        DS1=I1 
        D12(I1)=D11(I1)*DS1 
        D13(I1)=D12(I1)
       DO 120 I2=2,10  
         D21(I1,I2)=D11(I1)/I2  
         D22(I1,I2)=I2*I1 
         DS1=I2/I1
         IF(I2.EQ.10) D22(I1,1)=0.
         D21(I1,I2-1)=D21(I1,I2)*DS1
         D23(I1,I2-1)=0.5
        DO 130 I3=1,10 
          D31(I3,I2,I1)=0.
          D32(I3,I1,I2)=3.5
         DO 140 I4=1,4 
           DS2=I3+I4  
           IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN 
             D41(I1,I4,I3,I2)=DS2 
             D42(I1,I4+4,I2,I3)=DS2/4.
           ENDIF  
          DO 150 I5=1,5
            IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN 
              D51(I1,I2,I3,I4,I5)=DS2
              D52(I1,I2,I3,I4,I5)=DS2/2.
            ENDIF 
           DO 160 I6=1,2 
            IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3)
     &        THEN   
               D61(I1,I2,I3,I4,I5,I6)=0.5 
               D62(I1,I2,I3,I4,I5,I6)=100.5 
             ENDIF   
160        CONTINUE
150       CONTINUE  
           DS2=I4/2 
140      CONTINUE
          D33(I1,I2,I3)=DS2
130     CONTINUE
120    CONTINUE 
110   CONTINUE  
      RETURN  
      END  
C
      SUBROUTINE INITC(
     &           PCD11  ,PCD12  ,PCD13  ,CDS1,CDS2,CDS3,
     &           PCD21     ,PCD22     ,PCD23         ,
     &           PCD31         ,PCD32         ,PCD33   ,
     &           PCD41        ,PCD42                  ,
     &           PCD51          ,PCD52                ,
     &           pcd61            ,pcd62              ,
     &           pce11  ,pce12  ,pce13  ,CES1,CES2,CES3,
     &           pce21     ,pce22     ,pce23       ,  
     &           pce31        ,pce32        ,pce33   ,
     &           pce41       ,pce42        ,          
     &           pce51         ,pce52      ,          
     &           pce61           ,pce62)              
      pointer (pcd11,CD11),(pcd12,CD12),(pcd13,CD13)  
      pointer (pcd21,CD21),(pcd22,CD22),(pcd23,CD23)  
      pointer (pcd31,CD31),(pcd32,CD32),(pcd33,CD33)  
      pointer (pcd41,CD41),(pcd42,CD42)               
      pointer (pcd51,CD51),(pcd52,CD52)               
      pointer (pcd61,CD61),(pcd62,CD62)               
      pointer (pce11,CE11),(pce12,CE12),(pce13,CE13)  
      pointer (pce21,CE21),(pce22,CE22),(pce23,CE23)  
      pointer (pce31,CE31),(pce32,CE32),(pce33,CE33)  
      pointer (pce41,CE41),(pce42,CE42)               
      pointer (pce51,CE51),(pce52,CE52)               
      pointer (pce61,CE61),(pce62,CE62)               
      COMPLEX*16 CD11(10),CD12(10),CD13(10)           
      COMPLEX*16 CD21(10,10),CD22(10,10),CD23(10,10)  
      COMPLEX*16 CD31(10,10,10),CD32(10,10,10),CD33(10,10,10) 
      COMPLEX*16 CD41(8,8,8,8),CD42(8,8,8,8)          
      COMPLEX*16 CD51(5,5,5,5,5),CD52(5,5,5,5,5)      
      COMPLEX*16 CD61(5,3,3,3,3,2),CD62(5,3,3,3,3,2)  
      COMPLEX*8  CE11(10),CE12(10),CE13(10)           
      COMPLEX*8  CE21(10,10),CE22(10,10),CE23(10,10)  
      COMPLEX*8  CE31(10,10,10),CE32(10,10,10),CE33(10,10,10) 
      COMPLEX*8  CE41(8,8,8,8),CE42(8,8,8,8)          
      COMPLEX*8  CE51(5,5,5,5,5),CE52(5,5,5,5,5)      
      COMPLEX*8  CE61(5,3,3,3,3,2),CE62(5,3,3,3,3,2)  
      pcd11=  malloc(10*16)
      pcd12=  malloc(10*16) 
      pcd13=  malloc(10*16)
      pcd21=  malloc(10*10*16)
      pcd22=  malloc(10*10*16)
      pcd23=  malloc(10*10*16)
      pcd31=  malloc(10*10*10*16) 
      pcd32=  malloc(10*10*10*16)
      pcd33=  malloc(10*10*10*16)
      pcd41=  malloc(8**4*16)
      pcd42=  malloc(8**4*16)
      pcd51=  malloc(5**5*16)
      pcd52=  malloc(5**5*16)
      pcd61=  malloc(5*3**4*2*16)
      pcd62=  malloc(5*3**4*2*16)
      pce11=  malloc(10*16)
      pce12=  malloc(10*16)
      pce13=  malloc(10*16)
      pce21=  malloc(10*10*16)
      pce22=  malloc(10*10*16)
      pce23=  malloc(10*10*16)
      pce31=  malloc(10*10*10*16)
      pce32=  malloc(10*10*10*16)
      pce33=  malloc(10*10*10*16)
      pce41=  malloc(8**4*16)
      pce42=  malloc(8**4*16)
      pce51=  malloc(5**5*16)
      pce52=  malloc(5**5*16)
      pce61=  malloc(5*3**4*2*16)
      pce62=  malloc(5*3**4*2*16) 
C 
      DO 99999 I=1,10 
       CE11(I)=0 
       CE12(I)=0
       CE13(I)=0 
       DO 99999 J=1,10  
        CE21(I,J)=0 
        CE22(I,J)=0   
        CE23(I,J)=0  
        DO 99999 K=1,10   
         CE31(I,J,K)=0 
         CE32(I,J,K)=0 
         CE33(I,J,K)=0 
99999 CONTINUE  
      DO 99998 I=1,8   
       DO 99998 J=1,8 
        DO 99998 K=1,8   
         DO 99998 L=1,8
          CE41(I,J,K,L)=0 
          CE42(I,J,K,L)=0
          DO 99998 M=1,5 
           IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5)THEN
             CE51(I,J,K,L,M)=0
             CE52(I,J,K,L,M)=0
            ENDIF
           DO 99998 N=1,2 
            IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN 
             CE61(I,J,K,L,M,N)=0
             CE62(I,J,K,L,M,N)=0  
            ENDIF  
99998 CONTINUE 
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
          DO 99996 M=1,5 
           IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5)THEN 
             CD51(I,J,K,L,M)=0
             CD52(I,J,K,L,M)=0
            ENDIF 
           DO 99996 N=1,2 
            IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN 
             CD61(I,J,K,L,M,N)=0 
             CD62(I,J,K,L,M,N)=0 
            ENDIF   
99996 CONTINUE
      CES3=(3.5,-3.5)    
      DO 10 I1=1,10 
        CE11(I1)=I1+(1.,.5)
        CES1=I1/(0.,1.)  
        CE12(I1)=CE11(I1)*CES1
        CE13(I1)=CE12(I1) 
       DO 20 I2=2,10 
         CE21(I1,I2)=CE11(I1)/I2
         CE22(I1,I2)=I2*I1*(0.,2.)
         CES1=I2/I1-(1.,1.)
         IF(I2.EQ.10) CE22(I1,1)=CMPLX(I1,I2) 
         CE21(I1,I2-1)=CE21(I1,I2)*CES1
         CE23(I1,I2-1)=0.5-CE21(I1,I2-1)
        DO 30 I3=1,10    
          CE31(I3,I2,I1)=0.
          CE32(I3,I1,I2)=3.5  
         DO 40 I4=1,4            
           CES2=CMPLX(I3,I4)
           IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN 
             CE41(I1,I4,I3,I2)=CES2
             CE42(I1,I4+4,I2,I3)=CES2/4. 
           ENDIF     
          DO 50 I5=1,5  
            IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
              CE51(I1,I2,I3,I4,I5)=CES2
              CE52(I1,I2,I3,I4,I5)=CES2/2.
            ENDIF
           DO 60 I6=1,2  
            IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3)
     &        THEN   
               CE61(I1,I2,I3,I4,I5,I6)=(.5,.5) 
               CE62(I1,I2,I3,I4,I5,I6)=(100.5,100) 
             ENDIF
 60        CONTINUE
 50       CONTINUE  
           CES2=I4/2+SQRT(CMPLX(0.,I4)) 
 40      CONTINUE 
          CE33(I1,I2,I3)=CES2
 30     CONTINUE
 20    CONTINUE
 10   CONTINUE
C
C
      CDS3=(3.5,-3.5) 
      DO 110 I1=1,10  
        CD11(I1)=I1+(1.,.5)  
        CDS1=I1/(0.,1.)
        CD12(I1)=CD11(I1)*CDS1 
        CD13(I1)=CD12(I1)
       DO 120 I2=2,10  
         CD21(I1,I2)=CD11(I1)/I2 
         CD22(I1,I2)=I2*I1*(0.,2.)
         CDS1=I2/I1-(1.,1.) 
         IF(I2.EQ.10) CD22(I1,1)=CMPLX(I1,I2) 
         CD21(I1,I2-1)=CD21(I1,I2)*CDS1 
         CD23(I1,I2-1)=0.5-CD21(I1,I2-1)
        DO 130 I3=1,10  
          CD31(I3,I2,I1)=0.
          CD32(I3,I1,I2)=3.5   
         DO 140 I4=1,4
           CDS2=CMPLX(I3,I4) 
           IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN 
             CD41(I1,I4,I3,I2)=CDS2 
             CD42(I1,I4+4,I2,I3)=CDS2/4. 
           ENDIF    
          DO 150 I5=1,5 
            IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
              CD51(I1,I2,I3,I4,I5)=CDS2  
              CD52(I1,I2,I3,I4,I5)=CDS2/2.
            ENDIF  
           DO 160 I6=1,2
            IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3)
     &        THEN 
               CD61(I1,I2,I3,I4,I5,I6)=(.5,.5) 
               CD62(I1,I2,I3,I4,I5,I6)=(100.5,100)
             ENDIF  
160        CONTINUE 
150       CONTINUE
           CDS2=I4/2+SQRT(CMPLX(0.,I4)) 
140      CONTINUE     
          CD33(I1,I2,I3)=CDS2 
130     CONTINUE  
120    CONTINUE 
110   CONTINUE
      RETURN 
      END  
C
C
      SUBROUTINE INITIL(
     &            pi11   ,pi12   ,pi13   ,IS1,IS2,IS3,
     &            pi21      ,pi22      ,pi23         ,
     &            pi31         ,pi32         ,pi33   ,
     &            pi41        ,pi42                  ,
     &            pi51          ,pi52                ,
     &            pi61            ,pi62              ,
     &            pl11   ,pl12   ,pl13   ,LS1,LS2,LS3,
     &            pl21      ,pl22      ,pl23       , 
     &            pl31         ,pl32         ,pl33   ,
     &            pl41        ,pl42        , 
     &            pl51          ,pl52      , 
     &            pl61            ,pl62)
      pointer (pi11,I11),(pi12,I12),(pi13,I13)
      pointer (pi21,I21),(pi22,I22),(pi23,I23)
      pointer (pi31,I31),(pi32,I32),(pi33,I33)
      pointer (pi41,I41),(pi42,I42)
      pointer (pi51,I51),(pi52,I52)
      pointer (pi61,I61),(pi62,I62)
      pointer (pl11,L11),(pl12,L12),(pl13,L13)        
      pointer (pl21,L21),(pl22,L22),(pl23,L23)        
      pointer (pl31,L31),(pl32,L32),(pl33,L33)        
      pointer (pl41,L41),(pl42,L42)
      pointer (pl51,L51),(pl52,L52)
      pointer (pl61,L61),(pl62,L62)
      INTEGER*4   I11(10),I12(10),I13(10)             
      INTEGER*4   I21(10,10),I22(10,10),I23(10,10)    
      INTEGER*4   I31(10,10,10),I32(10,10,10),I33(10,10,10)
      INTEGER*4   I41(8,8,8,8),I42(8,8,8,8)           
      INTEGER*4   I51(5,5,5,5,5),I52(5,5,5,5,5)       
      INTEGER*4   I61(5,3,3,3,3,2),I62(5,3,3,3,3,2)   
      LOGICAL*4   L11(10),L12(10),L13(10),LS1,LS2,LS3 
      LOGICAL*4   L21(10,10),L22(10,10),L23(10,10)    
      LOGICAL*4   L31(10,10,10),L32(10,10,10),L33(10,10,10) 
      LOGICAL*4   L41(8,8,8,8),L42(8,8,8,8)           
      LOGICAL*4   L51(5,5,5,5,5),L52(5,5,5,5,5)       
      LOGICAL*4   L61(5,3,3,3,3,2),L62(5,3,3,3,3,2)   
      pi11=  malloc(10*16)   
      pi12=  malloc(10*16) 
      pi13=  malloc(10*16) 
      pi21=  malloc(10*10*16) 
      pi22=  malloc(10*10*16)
      pi23=  malloc(10*10*16)  
      pi31=  malloc(10*10*10*16)  
      pi32=  malloc(10*10*10*16)
      pi33=  malloc(10*10*10*16)
      pi41=  malloc(8**4*16)
      pi42=  malloc(8**4*16) 
      pi51=  malloc(5**5*16)
      pi52=  malloc(5**5*16) 
      pi61=  malloc(5*3**4*2*16)
      pi62=  malloc(5*3**4*2*16)
      pl11=  malloc(10*16)
      pl12=  malloc(10*16)  
      pl13=  malloc(10*16) 
      pl21=  malloc(10*10*16)  
      pl22=  malloc(10*10*16)
      pl23=  malloc(10*10*16)
      pl31=  malloc(10*10*10*16) 
      pl32=  malloc(10*10*10*16)
      pl33=  malloc(10*10*10*16)
      pl41=  malloc(8**4*16)
      pl42=  malloc(8**4*16)   
      pl51=  malloc(5**5*16)  
      pl52=  malloc(5**5*16)   
      pl61=  malloc(5*3**4*2*16)
      pl62=  malloc(5*3**4*2*16) 
C
      DO 99999 I=1,10    
       I11(I)=0 
       I12(I)=0  
       I13(I)=0 
       DO 99999 J=1,10   
        I21(I,J)=0 
        I22(I,J)=0 
        I23(I,J)=0 
        DO 99999 K=1,10   
         I31(I,J,K)=0 
         I32(I,J,K)=0 
         I33(I,J,K)=0
99999 CONTINUE     
      DO 99998 I=1,8  
       DO 99998 J=1,8     
        DO 99998 K=1,8 
         DO 99998 L=1,8  
          I41(I,J,K,L)=0 
          I42(I,J,K,L)=0 
          DO 99998 M=1,5 
           IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN 
             I51(I,J,K,L,M)=0  
             I52(I,J,K,L,M)=0 
            ENDIF  
           DO 99998 N=1,2  
            IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
             I61(I,J,K,L,M,N)=0 
             I62(I,J,K,L,M,N)=0
            ENDIF  
99998 CONTINUE 
      DO 99997 I=1,10    
       L11(I)=.FALSE.    
       L12(I)=.FALSE. 
       L13(I)=.FALSE.   
       DO 99997 J=1,10  
        L21(I,J)=.FALSE.    
        L22(I,J)=.FALSE.      
        L23(I,J)=.FALSE.    
        DO 99997 K=1,10 
         L31(I,J,K)=.FALSE.   
         L32(I,J,K)=.FALSE.  
         L33(I,J,K)=.FALSE.
99997 CONTINUE   
      DO 99996 I=1,8    
       DO 99996 J=1,8  
        DO 99996 K=1,8
         DO 99996 L=1,8 
          L41(I,J,K,L)=.FALSE.   
          L42(I,J,K,L)=.FALSE.
          DO 99996 M=1,5 
           IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN 
             L51(I,J,K,L,M)=.FALSE.
             L52(I,J,K,L,M)=.FALSE.
            ENDIF 
           DO 99996 N=1,2 
            IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
             L61(I,J,K,L,M,N)=.FALSE.
             L62(I,J,K,L,M,N)=.FALSE.
            ENDIF  
99996 CONTINUE   
      IS3=104   
      DO 10 I1=1,10 
        I11(I1)=I1      
        IS1=I1  
        I12(I1)=I11(I1)*IS1   
        I13(I1)=I12(I1)   
       DO 20 I2=2,10    
         I21(I1,I2)=I11(I1)*10/I2
         I22(I1,I2)=I2*I1 
         IS1=I2/I1 + IS3     
         IF(I2.EQ.10) I22(I1,1)=0. 
         I21(I1,I2-1)=I21(I1,I2)*IS1
         I23(I1,I2-1)=0.5   
        DO 30 I3=1,10  
          I31(I3,I2,I1)=0.   
          I32(I3,I1,I2)=3.5 
         DO 40 I4=1,4 
           IS2=I3+I4   
           IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN 
             I41(I1,I4,I3,I2)=IS2 
             I42(I1,I4+4,I2,I3)=IS2/3
           ENDIF         
          DO 50 I5=1,5      
            IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN 
              I51(I1,I2,I3,I4,I5)=IS2
              I52(I1,I2,I3,I4,I5)=IS2/2. 
            ENDIF 
           DO 60 I6=1,2 
            IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3)
     &        THEN 
               I61(I1,I2,I3,I4,I5,I6)=0.5    
               I62(I1,I2,I3,I4,I5,I6)=100.5   
             ENDIF   
 60        CONTINUE 
 50       CONTINUE   
           IS2=I4/2  
 40      CONTINUE  
          I33(I1,I2,I3)=IS2 
 30     CONTINUE   
 20    CONTINUE  
 10   CONTINUE 
C
C
      LS3=.TRUE.         
      DO 110 I1=1,10   
        L11(I1)=LS3  
        LS1=I1.GE.3  
        L12(I1)=L11(I1).AND.LS1
        L13(I1)=L12(I1)  
       DO 120 I2=2,10 
         L21(I1,I2)=L11(I1) 
         L22(I1,I2)=I2.GT.I1 
         LS1=I2/I1.NE.0 
         IF(I2.EQ.10) L22(I1,1)=.FALSE. 
         L21(I1,I2-1)=L21(I1,I2).AND.LS1 
         L23(I1,I2-1)=MOD(I2,2).EQ.0
        DO 130 I3=1,10 
          L31(I3,I2,I1)=LS3 
          L32(I3,I1,I2)=LS1 
         DO 140 I4=1,4    
           LS2=I3.LE.I4  
           IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN 
             L41(I1,I4,I3,I2)=LS2
             L42(I1,I4+4,I2,I3)=LS2 
           ENDIF   
          DO 150 I5=1,5  
            IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN 
              L51(I1,I2,I3,I4,I5)=LS2
              L52(I1,I2,I3,I4,I5)=LS2.AND.I5.GE.3 
            ENDIF     
           DO 160 I6=1,2  
            IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3)
     &        THEN  
               L61(I1,I2,I3,I4,I5,I6)=.FALSE. 
               L62(I1,I2,I3,I4,I5,I6)=.TRUE.
             ENDIF 
160        CONTINUE 
150       CONTINUE
           LS2=MOD(I3,2).NE.0
140      CONTINUE 
          L33(I1,I2,I3)=LS2
130     CONTINUE  
120    CONTINUE
110   CONTINUE
      RETURN 
      END 

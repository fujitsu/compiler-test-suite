      PROGRAM MAIN                                                    
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
      CALL INITR(                                                       
     &            D11    ,D12    ,D13    ,DS1,DS2,DS3,                  
     &            D21       ,D22       ,D23          ,                  
     &            D31          ,D32          ,D33    ,                  
     &            D41         ,D42                   ,                  
     &            D51           ,D52                 ,                  
     &            D61             ,D62               ,                  
     &            E11    ,E12    ,E13    ,ES1,ES2,ES3,                  
     &            E21       ,E22       ,E23        ,                    
     &            E31          ,E32          ,E33    ,                  
     &            E41         ,E42         ,                            
     &            E51           ,E52       ,                            
     &            E61             ,E62)                                 
      CALL INITC(                                                       
     &           CD11   ,CD12   ,CD13   ,CDS1,CDS2,CDS3,                
     &           CD21      ,CD22      ,CD23          ,                  
     &           CD31         ,CD32         ,CD33    ,                  
     &           CD41        ,CD42                   ,                  
     &           CD51          ,CD52                 ,                  
     &           CD61            ,CD62               ,                  
     &           CE11   ,CE12   ,CE13   ,CES1,CES2,CES3,                
     &           CE21       ,CE22       ,CE23        ,                  
     &           CE31         ,CE32          ,CE33    ,                 
     &           CE41         ,CE42         ,                           
     &           CE51           ,CE52       ,                           
     &           CE61             ,CE62)                                
      CALL INITIL(                                                      
     &            N11    ,N12    ,N13    ,NS1,NS2,NS3,                  
     &            N21       ,N22       ,N23          ,                  
     &            N31          ,N32          ,N33    ,                  
     &            N41         ,N42                   ,                  
     &            N51           ,N52                 ,                  
     &            N61             ,N62               ,                  
     &            L11    ,L12    ,L13    ,LS1,LS2,LS3,                  
     &            L21       ,L22       ,L23        ,                    
     &            L31          ,L32          ,L33    ,                  
     &            L41         ,L42         ,                            
     &            L51           ,L52       ,                            
     &            L61             ,L62)                                 
      DATA      N/1/                                                    
      DO 10 I1=1,5                                                      
       I6=N11(I1)                                                       
       DO 20 I2=1,3                                                     
        DO 30 I3=1,3                                                    
         DO 40 I4=1,3                                                   
          IS1=N41(I4,I3,I2,I1)                                          
          DO 50 I5=1,3                                                  
           DO 60 I6=1,2                                                 
            IS2=I6*IS1                                                  
            N61(I1,I2,I3,I4,I5,I6)=IS2                                  
 60        CONTINUE                                                     
 50       CONTINUE                                                      
          N42(I4,I3,I2,I1)=IS1/3                                        
 40      CONTINUE                                                       
 30     CONTINUE                                                        
 20    CONTINUE                                                         
       D11(I1)=I6                                                       
 10   CONTINUE                                                          
      WRITE(6,*) D11                                                    
      WRITE(6,*) N42                                                    
      WRITE(6,*) N61                                                    

      DO 110 I1=1,3                                                     
       DS1=E11(I1)                                                      
       LS1=DS1.GT.0.0D0                                                 
       DO 120 I2=1,6,2                                                  
        DO 130 I3=1,3                                                   
         DS1=I3*N                                                       
         DO 140 I4=1,3,N                                                
          DO 150 I5=1,3                                                 
           L41(I5,I4,I3,I2)=LS1                                         
           DO 160 I6=1,2                                                
            L61(I2,I1,I3,I4,I5,I6)=LS1.OR.(DS1.GT.0.5D0)                
160        CONTINUE                                                     
150       CONTINUE                                                      
140      CONTINUE                                                       
130     CONTINUE                                                        
        N41(I1,I2,I1,I2)=DS1                                            
120    CONTINUE                                                         
110   CONTINUE                                                          
      WRITE(6,*) L41                                                    
      WRITE(6,*) L61                                                    
      WRITE(6,*) N41                                                    
      STOP                                                              
      END                                                               

      SUBROUTINE INITR(                                                 
     &            D11    ,D12    ,D13    ,DS1,DS2,DS3,                  
     &            D21       ,D22       ,D23          ,                  
     &            D31          ,D32          ,D33    ,                  
     &            D41         ,D42                   ,                  
     &            D51           ,D52                 ,                  
     &            D61             ,D62               ,                  
     &            E11    ,E12    ,E13    ,ES1,ES2,ES3,                  
     &            E21       ,E22       ,E23        ,                    
     &            E31          ,E32          ,E33    ,                  
     &            E41         ,E42         ,                            
     &            E51           ,E52       ,                            
     &            E61             ,E62)                                 
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

      SUBROUTINE INITC(                                                 
     &           CD11   ,CD12   ,CD13   ,CDS1,CDS2,CDS3,                
     &           CD21      ,CD22      ,CD23          ,                  
     &           CD31          ,CD32          ,CD33    ,                
     &           CD41         ,CD42                   ,                 
     &           CD51           ,CD52                 ,                 
     &           CD61             ,CD62               ,                 
     &           CE11   ,CE12   ,CE13   ,CES1,CES2,CES3,                
     &           CE21      ,CE22      ,CE23        ,                    
     &           CE31         ,CE32         ,CE33    ,                  
     &           CE41        ,CE42         ,                            
     &           CE51          ,CE52       ,                            
     &           CE61            ,CE62)                                 
      COMPLEX*16 CD11(10),CD12(10),CD13(10),CDS1,CDS2,CDS3              
      COMPLEX*16 CD21(10,10),CD22(10,10),CD23(10,10)                    
      COMPLEX*16 CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)           
      COMPLEX*16 CD41(8,8,8,8),CD42(8,8,8,8)                            
      COMPLEX*16 CD51(5,5,5,5,5),CD52(5,5,5,5,5)                        
      COMPLEX*16 CD61(5,3,3,3,3,2),CD62(5,3,3,3,3,2)                    
      COMPLEX*8  CE11(10),CE12(10),CE13(10),CES1,CES2,CES3              
      COMPLEX*8  CE21(10,10),CE22(10,10),CE23(10,10)                    
      COMPLEX*8  CE31(10,10,10),CE32(10,10,10),CE33(10,10,10)           
      COMPLEX*8  CE41(8,8,8,8),CE42(8,8,8,8)                            
      COMPLEX*8  CE51(5,5,5,5,5),CE52(5,5,5,5,5)                        
      COMPLEX*8  CE61(5,3,3,3,3,2),CE62(5,3,3,3,3,2)                    
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
      SUBROUTINE INITIL(                                                
     &            I11    ,I12    ,I13    ,IS1,IS2,IS3,                  
     &            I21       ,I22       ,I23          ,                  
     &            I31          ,I32          ,I33    ,                  
     &            I41         ,I42                   ,                  
     &            I51           ,I52                 ,                  
     &            I61             ,I62               ,                  
     &            L11    ,L12    ,L13    ,LS1,LS2,LS3,                  
     &            L21       ,L22       ,L23        ,                    
     &            L31          ,L32          ,L33    ,                  
     &            L41         ,L42         ,                            
     &            L51           ,L52       ,                            
     &            L61             ,L62)                                 
      INTEGER*4   I11(10),I12(10),I13(10),IS1,IS2,IS3                   
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

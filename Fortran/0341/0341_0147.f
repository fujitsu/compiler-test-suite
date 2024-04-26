      IMPLICIT   REAL*8(A-H,P-Z),REAL*4(O)
      PARAMETER  (L=50,M=50,N=50,LMN=125000,MM=30,LT=50)
      DIMENSION  A(L,M,N),Z(L,M,N)
      COMMON     T(LT,LT,LT)
      INTEGER    NARU(10)
C
      DATA A/LMN*0.0/,Z/LMN*0.0/,NN/MM/
      
      DO 100 I=1,10
         NARU(I)=100
 100  CONTINUE
C
      CALL SUB(A,Z,L,M,N,NN)                                     
      END
C
      SUBROUTINE SUB(A,Z,L,M,N,NN)                                     
      IMPLICIT   REAL*8(A-H,P-Z),REAL*4(O)                              
      PARAMETER  (LT=50)                                                
      DIMENSION  A(L,M,N),Z(L,M,N)                                      
      COMMON     T(LT,LT,LT)                                            

      K=NN                                                              
      J=NN                                                              
      DO 10 I=1,LT                                                      
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)**2                                             
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)+1.0                                            
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)/2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
       T(I,J,K)=A(I,J,K)*2                                              
       A(I,J,K)=(T(I,J,K)+Z(I,J,K))*2                                   
       T(I,J,K)=DSQRT(DABS(A(I,J+1,K+1)-Z(I,J,K)))                      
       A(I,J,K)=Z(I,J,K)+T(I,J,K)                                       
  10  CONTINUE                                                          

      WRITE(6,1000) (((A(I,J,K),I=16,20),J=16,20),K=16,20)              

 1000 FORMAT(3G20.5)                                                    
      RETURN                                                            
      END                                                               

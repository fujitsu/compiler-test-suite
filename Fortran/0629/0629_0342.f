      SUBROUTINE FYYY( OMEGA, EIGEN )                                
      PARAMETER (N1=191,N2=33,N3=24)                                 
      COMMON /COST3 / RA52
      COMMON /GMET  / GR (N1,N2,N3)                                  
      COMMON /WORK4 / FFF(N1,N2,N3,5)                                
      COMMON /GMET5 / TS (N1,N2,N3)                                  
      COMMON /WORKXX/ FX(N1,N2,N3,5),FY(N1,N2,N3,5)

      DO 251 K = 2, N3-1                                             
      DO 251 J = 1, N2-1                                             
      DO 251 I = 2, N1-1                                             
      AWWW     = 0.5*( GR(I,J,K)+GR(I,J+1,K) )                       
      FX(I,J,K,1) = ( AWWW*FX(I,J,K,1)+FY(I,J,K,1)+FY(I,J+1,K,1) )   
      FX(I,J,K,2) = ( AWWW*FX(I,J,K,2)+FY(I,J,K,2)+FY(I,J+1,K,2) )   
      FX(I,J,K,3) = ( AWWW*FX(I,J,K,3)+FY(I,J,K,3)+FY(I,J+1,K,3) )   
      FX(I,J,K,4) = ( AWWW*FX(I,J,K,4)+FY(I,J,K,4)+FY(I,J+1,K,4) )   
      FX(I,J,K,5) = ( AWWW*FX(I,J,K,5)+FY(I,J,K,5)+FY(I,J+1,K,5) )   
  251 CONTINUE                                                       

      J = 2                                                          

      DO 253 K = 2, N3-1                                             
      DO 253 I = 2, N1-1                                             
      RAMB         = RA52*TS(I,J,K)                                  
      FFF(I,J,K,1) = FFF(I,J,K,1) - RAMB*( FX(I,J,K,1)+FX(I,J,K,1) ) 
      FFF(I,J,K,2) = FFF(I,J,K,2) - RAMB*( FX(I,J,K,2)+FX(I,J,K,2) ) 
      FFF(I,J,K,4) = FFF(I,J,K,4) - RAMB*( FX(I,J,K,4)+FX(I,J,K,4) ) 
      FFF(I,J,K,5) = FFF(I,J,K,5) - RAMB*( FX(I,J,K,5)+FX(I,J,K,5) ) 
  253 CONTINUE                                                       

      RETURN                                                         
      END                                                            

      program main
      write(6,*) "Compile OK"
      end

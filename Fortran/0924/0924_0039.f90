REAL*2,PARAMETER::R1=1.2_2, R2=2.2_2, R3=3.2_2
REAL*2::RES

REAL*2::RES1=AMAX0(1.2_2,2.2_2,3.2_2)        
REAL*2::RES2=AMAX0(R1,R2,R3)          
REAL*2::RES3=MAX1(1.2_2,2.2_2,3.2_2)   
REAL*2::RES4=MAX1(R1,R2,R3)        

RES=AMAX0(1.2_2,2.2_2,3.2_2)
RES=AMAX0(R1,R2,R3)  
RES=MAX1(1.2_2,2.2_2,3.2_2) 
RES=MAX1(R1,R2,R3)        

END
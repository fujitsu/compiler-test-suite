REAL*2,PARAMETER::R1=1.2_2, R2=2.2_2, R3=3.2_2
REAL*2::RES

REAL*2::RES1=AMIN0(1.2_2,2.2_2,3.2_2)       
REAL*2::RES2=AMIN0(R1,R2,R3)               
                                          
REAL*2::RES3=MIN1(1.2_2,2.2_2,3.2_2)   
REAL*2::RES4=MIN1(R1,R2,R3)        

RES=AMIN0(1.2_2,2.2_2,3.2_2)
RES=AMIN0(R1,R2,R3)  
RES=MIN1(1.2_2,2.2_2,3.2_2) 
RES=MIN1(R1,R2,R3)         

END

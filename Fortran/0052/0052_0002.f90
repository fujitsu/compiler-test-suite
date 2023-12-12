     complex(kind=2):: yy
     complex(kind=2),parameter::cc=(3.5_2,4.5_2)
     integer(kind=1),parameter::i1=2_1
     integer(kind=2),parameter::i2=4_2
     integer(kind=8),parameter::i8=5_8
     real(kind=2),parameter::r2=1.5_2
     real(kind=4),parameter::r4=3.5_4
     real(kind=8),parameter::r8=4.5_8
     real(kind=16),parameter::r16=5.5_8
     yy = cc+i1
     if(yy /=(5.5_2,4.5_2))print*,"101"
   
     yy = cc+i2
     if(yy /=(7.5_2,4.5_2))print*,"102"
 
     yy = cc+i8
     if(yy /=(8.5_2,4.5_2))print*,"103"
 
     yy = cc+r2
     if(yy /=(5.0_2,4.5_2))print*,"104"
 
     yy = cc+r4
     if(yy /=(7.0_2,4.5_2))print*,"105"

     yy = cc+r8
     if(yy /=(8.0_2,4.5_2))print*,"106"

     yy = cc+r16
     if(yy /=(9.0_2,4.5_2))print*,"107"

     yy = cc+cc
     if(yy /=(7.0_2,9.0_2))print*,"108"
      
     print*,"PASS"
       
   END PROGRAM

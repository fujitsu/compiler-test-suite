      real       real_a1(10),real_b1(10)                               
      real       real_a2(10,10),real_b2(10,10)
      pointer (pa1 ,real_a1),(pb1 ,real_b1),
     *        (pa2 ,real_a2),(pb2 ,real_b2)
      j = 1
  110 continue
  140 continue
       do 230 inc1=1,10                                                 
  230 continue                                                         
  130 continue
       do 240 inc1=1,10                                                 
  240 continue                                                         
      j=j+1                                                            
      goto (110,150,130,140,150) j                                     
  150  continue

       write(6,*) j
      stop                                                             
      end                                                              

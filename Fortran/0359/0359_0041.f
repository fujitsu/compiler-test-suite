      call c8
      call c16
      end

      subroutine c8
      implicit  real*4(d),logical*4(l),complex*8(c)                    
      dimension   da10(10),da20(10),
     *      cd10(10),cd20(10)

      data   da10/10*2.d0/,da20/10*1.d0/
      data   cd10/10*(1.d0,2.d0)/,cd20/10*(2.d0,1.d0)/                

      do 40 i2=1,10
         da10(i2) = real(cd10(i2)) + imag(cd20(i2)) +cd10(i2)    
         da20(i2) = imag(cd10(i2)) - real(cd20(i2)) +cd20(i2)    
 40   continue                                                      

      write(6,*) ' (da10) ',da10                                        
      write(6,*) ' (da20) ',da20                                        
      end                                                               

      subroutine c16
      implicit  real*8(d),logical*4(l),complex*16(c)                    
      dimension   da10(10),da20(10),
     *      cd10(10),cd20(10)

      data   da10/10*2.d0/,da20/10*1.d0/
      data   cd10/10*(1.d0,2.d0)/,cd20/10*(2.d0,1.d0)/                

      do 40 i2=1,10
         da10(i2) = dreal(cd10(i2)) + dimag(cd20(i2)) +cd10(i2)    
         da20(i2) = dimag(cd10(i2)) - dreal(cd20(i2)) +cd20(i2)    
 40   continue                                                      

      write(6,*) ' (da10) ',da10                                        
      write(6,*) ' (da20) ',da20                                        
      end                                                               

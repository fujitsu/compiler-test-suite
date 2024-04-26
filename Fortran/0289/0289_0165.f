      integer*1    i01_a(5),i01_b(5,5),w_i01_a(5),w_i01_b(5,5)
      pointer (pi01_a ,i01_a) ,(pi01_b ,i01_b)
      integer*2    i02_a(5),i02_b(5,5)
      integer*4    i04_a(5),i04_b(5,5)
      integer,allocatable::w_i04_a(:),w_i04_b(:,:)
      pointer (pi04_a ,i04_a),(pi04_b ,i04_b)
      integer*4    i08_a(5),i08_b(5,5)                                  
      logical*1    l01_a(5),l01_b(5,5)                                  
      logical*4    l04_a(5),l04_b(5,5),t_l04                            
      logical*4    w_l04_a(5),w_l04_b(5,5)
      pointer (pl04_a ,l04_a),(pl04_b ,l04_b)
      real*4       r04_a(5),r04_b(5,5)                                  
      real*8       r08_a(5),r08_b(5,5)                                  
      real*8       r16_a(5),r16_b(5,5),range_q                          
      complex*8    c08_a(5),c08_b(5,5)                                  
      complex*16   c16_a(5),c16_b(5,5)                                  
      complex*16   c32_a(5),c32_b(5,5),t_c32                            
      character*4  ch4_a(5),ch4_b(5,5),t_ch4                            
       data t_l04/.true./,range_q/1.0d-15/,t_c32/( 1.6d+1,-1.6d+1)/      
     +     t_ch4/" l=4"/
       pi01_a = loc (w_i01_a(1))
       pi01_b = loc (w_i01_b(1,1))
      i01_a=1                                                           
      i02_a=2                                                           
      allocate (w_i04_a(5),w_i04_b(5,5))
      pi04_a = loc (w_i04_a(1))
      pi04_b = loc (w_i04_b(1,1))
      i04_a=4                                                           
      i08_a=8                                                           
      l01_a= .true.                                                     
      pl04_a = loc (w_l04_a(1))
      pl04_b = loc (w_l04_b(1,1))
      l04_a= .false.                                                    
      r04_a=4.0e+0                                                      
      r08_a=8.0d+0                                                      
      r16_a=1.6d+1                                                      
      c08_a=(8.0e+0,-8.0e+0)                                            
      c16_a=(1.6e+1,-1.6e+1)                                            
      c32_a=(3.2d+1,-3.2d+1)                                            
      ch4_a=' l=4'                                                      
      i01_b=c32_a(1)                                                    
      i02_b=i01_a(2)                                                    
      i04_b=i02_a(3)                                                    
      i08_b=i04_a(4)                                                    
      deallocate (w_i04_a,w_i04_b)
      l01_b=l04_a(5)                                                    
      l04_b=l01_a(1)                                                    
      r04_b=i08_a(2)                                                    
      r08_b=r04_a(3)                                                    
      r16_b=r08_a(4)                                                    
      c08_b=r16_a(5)                                                    
      c16_b=c08_a(1)                                                    
      c32_b=c16_a(2)                                                    
      ch4_b=ch4_a(3)                                                    
      do i=1,5                                                          
       do j=1,5                                                         
         if(    l04_b(j,i)       .neqv. t_l04  ) goto 100               
         if(abs(c32_b(j,i)-t_c32) .gt.  range_q) goto 100               
         if(    ch4_b(j,i)        .ne.  t_ch4  ) goto 100               
       enddo                                                            
      enddo                                                             
      write(6,*) '*** ok ***'                             
      stop                                                              
  100 write(6,*) '*** ng ?? ***'                             
      write(6,*) 'l04_b=',l04_b                                         
      write(6,*) 'c32_b=',c32_b                                         
      write(6,*) 'ch4_b=',ch4_b                                         
      stop                                                              
      end                                                               

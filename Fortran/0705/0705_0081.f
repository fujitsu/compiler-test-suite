      call s1
      print *,'pass'
      end
      subroutine s1
      real*8   rda,rdb,rdc,rderr,rdcnt1,rdcnt2                         
      character  cha*28                                                 
      integer  i4cnt1,i4cnt2
      integer*2  i2cnt,i2a
      logical  l4a/.true./, l4b/.true./, l4c, l4d, true, l4e,           
     1       l4f(-12:13), lfunc, l4g/.false./,                         
     2       l1a(2,8)                                                   
      real  r4b(2), arg                                                 
      complex  c8a                                                      
      parameter ( rda = 1.0d+2, true =.true. )                          
      data  i4a /3/                                                     
      data  l4f/.true.,25*.false./                                      
      data  ( l1a(1,j),j=1,8) / 4*.false.,3*.true.,.false. /,           
     1      ( l1a(2,j),j=1,8 ) /.true.,3*.false.,4*.true./              
      equivalence   ( r4b(1),c8a )                                      
      lfunc(arg)  =  arg.le.10.0                                       
 2000 format(1h1 /// 6x,9h*fortran*,5x,8hf7711102,5x,5henter / )        
 3000 format( // 19h + justice + item +,15x,19h+ computed result +,     
     *       19x,17h+ compare value +,25x,14h+ difference + / )         
 7000 format(1h0,1x,7h*error*,1x,1h(,i3,2h ) )                          
 8000 format(1h0,1x,4h*ok*,4x,1h(,i3,2h ) )                             
 9000 format(1h0 / 6x,9h*fortran*,5x,8hf7711102,5x,4hexit)              
      itemc  =  0                                                       
      write(1,2000)                                                     
      write(1,3000)                                                     
  100 itemc  =  itemc + 1                                               
      rdb = 0.0d0                                                       
      rdc = 0.587500d+6                                                 
      do 120  rdcnt1 = rda,0.25d+4,0.5d+3                               
        do 110  rdcnt2 = 3.0d+2,1.2d+3,1.0d+2                           
  110   rdb = rdb + 10.0d0 * rdcnt1 + rdcnt2                            
  120 continue                                                          
      rderr = dabs( rdb-rdc ) / dabs( rdc )                            
      if( rderr-5.0d-14 ) 140,140,130                                  
  130 write(6,7000) itemc                                               
      write(6,7010) rdb,rdc,rderr                                      
      go  to  200                                                       
  140 write(1,8000) itemc                                               
  200 itemc  =  itemc + 1                                               
      cha = '*****  smoking  clean  *****'                              
      if( i4a / 2 .gt. 1 ) then                                         
        cha = '***  beautiful  sunday  ***'                             
       elseif( i4a.eq.3 ) then                                          
        do 210  i4cnt1 = i4a,i4a+20                                     
          do 210  i4cnt2 = 45,23                                        
  210   cha( i4a+3 : i4a+5 ) = cha( i4a : i4a+2 )                       
       else                                                             
        cha = '*abcdefghijklmnopqrstuvwxyz*'                            
      endif                                                             
      if( cha.eq.'*****  smoking  clean  *****' )  go  to  220          
      write(6,7000) itemc                                               
      write(6,7020) cha                                                 
      go  to  300                                                       
  220 write(1,8000) itemc                                               
  300 itemc  =  itemc + 1                                               
      i4b = 0                                                           
      r4a = +1.0                                                        
      do 320  while ( l4a.and.l4b )                                     
        l4c = r4a .gt. 0.0                                              
        do 310  while ( l4a.and.l4c )                                   
          i4b = i4b + 1                                                 
  310   l4c = .not.l4c                                                  
        r4a = r4a * 10.0 ** (-1)                                        
  320 if( r4a.le. 1.0e-09 )  l4b =.false.                               
      if( i4b - 10e0 ) 340,340,330
  330 write(6,7000) itemc                                               
      write(6,7030) r4a                                                 
      go  to  400                                                       
  340 write(1,8000) itemc                                               
  400 itemc  =  itemc + 1                                               
      i4c = 100                                                         
      l4d = .false.                                                     
      do 1410  ijk=1,11
        write(15,4000) ijk,.false.
 1410 end do
      rewind 15
      do 410  while ( true.neqv.l4d )                                   
        read(15,4000,end=420) i4c,l4d                                   
        do 410  while ( i4c.le.10 )                                     
  410   read(15,4000,end=420) i4c,l4d                                   
 4000 format(5x,i15,5x,l5)                                              
  420 if( i4c - 11 ) 440,440,430                                        
  430 write(6,7000) itemc                                               
      write(6,7040) i4c                                                 
      go  to  500                                                       
  440 write(1,8000) itemc                                               
  500 itemc  =  itemc + 1                                               
  600 itemc  =  itemc + 1                                               
  700 itemc  =  itemc + 1                                               
      i4e = 0                                                           
      do 710  while ( l4f(i4e-12) )                                     
       do 720  while ( l4f(i4e-12) )                                    
        do 730  while ( l4f(i4e-12) )                                   
         do 740  while ( l4f(i4e-12) )                                  
          do 750  while ( l4f(i4e-12) )                                 
           do 760  while ( l4f(i4e-12) )                                
            do 770  while ( l4f(i4e-12) )                               
             do 780  while ( l4f(i4e-12) )                              
              do 790  while ( l4f(i4e-12) )                             
               do 7100  while ( l4f(i4e-12) )                           
                do 7110  while ( l4f(i4e-12) )                          
                 do 7120  while ( l4f(i4e-12) )                         
                  do 7130  while ( l4f(i4e-12) )                        
                   do 7140  while ( l4f(i4e-12) )                       
                    do 7150  while ( l4f(i4e-12) )                      
                     do 7160  while ( l4f(i4e-12) )                     
                      do 7170  while ( l4f(i4e-12) )                    
                       do 7180  while ( l4f(i4e-12) )                   
                        do 7190  while ( l4f(i4e-12) )                  
                         do 7200  while ( l4f(i4e-12) )                 
                          do 7210  while ( l4f(i4e-12) )                
                           do 7220  while ( l4f(i4e-12) )               
                            do 7230  while ( l4f(i4e-12) )              
                             do 7240  while ( l4f(i4e-12) )             
                              do 7250  while ( l4f(i4e-12) )            
 7250                         i4e  =  i4e + 1                           
 7240                        i4e  =  i4e + 1                            
 7230                       i4e  =  i4e + 1                             
 7220                      i4e  =  i4e + 1                              
 7210                     i4e  =  i4e + 1                               
 7200                    i4e  =  i4e + 1                                
 7190                   i4e  =  i4e + 1                                 
 7180                  i4e  =  i4e + 1                                  
 7170                 i4e  =  i4e + 1                                   
 7160                i4e  =  i4e + 1                                    
 7150               i4e  =  i4e + 1                                     
 7140              i4e  =  i4e + 1                                      
 7130             i4e  =  i4e + 1                                       
 7120            i4e  =  i4e + 1                                        
 7110           i4e  =  i4e + 1                                         
 7100          i4e  =  i4e + 1                                          
  790         i4e  =  i4e + 1                                           
  780        i4e  =  i4e + 1                                            
  770       i4e  =  i4e + 1                                             
  760      i4e  =  i4e + 1                                              
  750     i4e  =  i4e + 1                                               
  740    i4e  =  i4e + 1                                                
  730   i4e  =  i4e + 1                                                 
  720  i4e  =  i4e + 1                                                  
  710 i4e  =  i4e + 1                                                   
      if( i4e - 25 ) 7260,7270,7260                                     
 7260 write(6,7000) itemc                                               
      write( 6,7040) i4e                                                
      go  to  800                                                       
 7270 write(1,8000) itemc                                               
  800 itemc  =  itemc + 1                                               
  900 itemc  =  itemc + 1                                               
 1000 itemc  =  itemc + 1                                               
 7010 format(1h+,27x,d24.17,12x,d24.17,21x,d24.17)                      
 7020 format(1h+,21x,a30)                                               
 7030 format(1h+,36x,e15.8)                                             
 7040 format(1h+,36x,i15)                                               
 7050 format(1h+,27x,2h( ,f6.3,' , ',f6.3,2h ) )                        
 7060 format(1h+,36x,i15,20x,i15)                                       
 1100 write(1,9000)                                                     
      end                                                               
      subroutine  s1101 ( i4dd )                                        
      i4dd = i4dd + 1                                                   
      return                                                            
      end                                                               

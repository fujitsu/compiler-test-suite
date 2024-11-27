      integer*4 a
      integer*8 i,ifun,jj
      common a,i
      j=ifun()
      write(1,*)j
      rewind 1
      read(1,*) iii
      if (iii/=1)print *,'error'
      print *,'pass'
      end
      integer*8 function ifun()  
      ifun=1
      end function

      pointer(k,i)
      integer*8 i,ifun,ii
      k=loc(ii)
      i=ifun()
      write(1,*)i
      rewind 1
      read(1,*) iii
      if (iii/=1)print *,'error'
      print *,'pass'
      end
      integer*8 function ifun()  
      ifun=1
      end function

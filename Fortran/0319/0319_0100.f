      subroutine sub(nn,jj)
      i=1
      do 10 while(i.le.nn)
         jj=jj+1
         i=i+1
  10  continue
      return
      end
      j=1
      nn=10
      call sub(nn,j)
      print *,j
      stop
      end

      integer*1 i1a(10)
      integer*1 i1aa(10,20)

      do 10,i=1,10,1
 10      i1a(i) = i
      print *,"Result = ",i1a
      call flush(6)
      print *,"Result = ",i1a
       call flush(6)

      do 20,i=1,10,1
         do 20,j=1,20,1
 20         i1aa(i,j) = i*j
      print *,"Result = ",i1aa
       call flush(6)
      print *,"Result = ",i1aa
       call flush(6)

      stop
      end

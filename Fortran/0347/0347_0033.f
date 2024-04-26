      dimension   n(11),m(11)    ,a(11:21),b(11)
      data        n/11*1/,m/11*2/,a/11*2.5/,b/11*3.0/
      k= 10
      if (n(3).eq.1) then
        do 10 i=1,k
         m(i) = m(i+1)+n(i+k-10)
  10    continue
      else
        do 30 i=1,10
         a(i+k) = a(i+k+1)+b(i+k-10)
  30    continue
      end if
      write(6,*) k
      write(6,*) m
      write(6,*) n
      write(6,*) a
      write(6,*) b
      stop
      end

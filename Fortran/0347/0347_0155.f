      dimension idx(30),ii(30)
      data  idx/30*4/,ii/30*3/
      data  it1/2/,it2/15/,m/10/
      do 10 i=1,m
       do 10 j=1,it2
           idx(j+it2) = idx(j) + ii(j+i)
           ii(j) = it2 + idx(j)
           it1 = it1 + ii(j)
  10  continue
      write(6,*) idx
      write(6,*) 'it1=',it1,'it2=',it2
      stop
      end

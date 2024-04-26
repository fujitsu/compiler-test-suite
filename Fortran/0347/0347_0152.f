      dimension idx(30),ii(30)
      data  idx/30*4/,ii/30*3/
      data  it1/2/,it2/10/,m/3/,k/3/
      do 10 i=1,m
       do  5 j=1,it2
  5        idx(j+it2) = idx(j) + ii(k+i)
           it2 = it1
           it1 = it1 + it1
  10  continue
      write(6,*) idx
      stop
      end

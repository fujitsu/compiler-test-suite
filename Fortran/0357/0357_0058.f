      integer*4 m2(1)
      do 3 k=1,5
      m2(1) = k*k
      do 4 i=1,5
	m2(1) = m2(1) + 1
4     continue
3     continue
      print *,'ok'
      end

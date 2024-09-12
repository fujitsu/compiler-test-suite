      dimension a(10),b(10),c(10),d(10),e(10),f(10),g(10),h(10),p(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,7,8,9,10/
      data d/1,2,3,4,5,6,7,8,9,10/
      data e/1,2,3,4,5,6,7,8,9,10/
      data f/1,2,3,4,5,6,7,8,9,10/
      data g/1,2,3,4,5,6,7,8,9,10/
      data h/1,2,3,4,5,6,7,8,9,10/
      data p/1,2,3,4,5,6,7,8,9,10/
      do 10 i=2,10
        x = sqrt(a(i)) + b(i)
        do 20 j=2,10
          y = c(j) + sqrt(d(j))
          do 30 k=2,10
            z = e(k) + f(k)
            g(k) = g(k-1) + z
  30      continue
          h(j) = h(j-1) + y
  20    continue
        p(i) = p(i-1) + x
  10  continue
      write(6,*) g,' k = ',k
      write(6,*) h,' j = ',j
      write(6,*) p,' i = ',i
      stop
      end

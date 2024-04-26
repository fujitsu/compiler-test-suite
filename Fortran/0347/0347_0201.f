       dimension  a(10),b(10),c(10)
       do 10 i=1,10
         a(i) = 1.0
         b(i) = 2.0
         c(i) = 3.0
 10    continue
       n = 1
       do 20 j=3,8
        a(n+1) = b(j) + c(n+1)
        if (j.gt.7) then
          b(j) = c(j) * a(j)
        else
          c(j) = b(j) * a(j)
        endif
        a(n) = b(j-1) / c(j-1)
        n = n + 1
 20    continue
       write(6,*) a
       write(6,*) b
       write(6,*) c
       stop
       end

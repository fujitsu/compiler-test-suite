       dimension  a(10),b(10),c(10)
       do 10 i=1,10
         a(i) = 1.0
         b(i) = 2.0
         c(i) = 3.0
 10    continue
       n = 1

       do 20 i=1,8
        a(n+1) = b(i) + c(i)
        if (i.gt.7) then
          n = n - 1
        else
          n = n + 1
        endif
        b(i) = a(n) * c(i)
 20    continue
       write(6,*) a
       write(6,*) b
       write(6,*) c
       stop
       end

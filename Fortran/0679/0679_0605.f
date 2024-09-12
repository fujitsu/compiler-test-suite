       program main
       real * 4 a(30) , b(30)
       integer * 4 n , m
       data a/30*1. / , b/30*2. / , nn/10/
       n = 1
       m = n + 9
       do 10 i = n , nn
         a(i) = a(i) + 1.1
         b(i) = a(i) + b(i)
         do 11 j = 1,m
           a(j) = a(j+n)
           b(j) = b(j+i)
 11      continue
 10    continue
       write(6,*) ' a = ' , a
       write(6,*) ' b = ' , b
       stop
       end

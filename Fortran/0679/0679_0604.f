       program main
       real * 4 a(-9:30) ,b(10)
       integer * 4 n , m
       data m/-10/  , a/40*1.0/
       inc = 1
       n = 1
       do 10 i = n , - m  ,inc
         a(i) = 1.1
         a(i) = a(i+n)  + a(i)
         a(i) = a(i+m)
         a(i) = a(i+inc)
         a(i) = a(i+i)
         b(i) = a(i) + 1.
 10    continue
       write(6,*) ' a   = ', a
       write(6,*) ' b   = ',b
       stop
       end

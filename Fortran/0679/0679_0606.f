       program main
       real * 4 a(20) , b(20)
       integer * 4 n , m , nn , j  , i2
       data a/20*1. / , b/20*2. / ,m/10/
       n = 1
       nn = 1
       do 10 i = n   , m   , nn
         a(i) = b(i+m )
         i2 = i
 10    continue
       do 20 j = 1   , i2
         b(j) = b(j+i2)
 20    continue
       do 30 l = 1 , j-2
         b(l) = b(l+j)
         b(l) = b(l+l)
 30    continue
       write(6,*) ' a= ' , a
       write(6,*) ' b= ' , b
       stop
       end

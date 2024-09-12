       program main
       real * 4 a(30) , b(30) , c(30 )
       integer * 4 n , m
       data a/30*1. / , b/30*2. / , c/30*3. /
       data n/1/ , m/10/
       n = 1
       m = 10
       nn = n
       mm = m
       do 10 i = n , m
         a(i) = a(i) * b(i)
         do 11 j = nn , mm ,n
           a(j) = a(j+m-10)
           b(j) = b(j+n)
           a(j) = a(j+i)+b(j+n)
 11      continue
 10    continue
       do 20 i = 1 , m
         do 21 j = n , 10
           c(j) =  c(j+m)
           b(j) = b(j+i)
 21      continue
         do 22 k = n , m
           c(k+n) = c(k+k)
 22      continue
 20    continue
       write(6,*) ' a =   ' , a
       write(6,*) ' b =   ' , b
       write(6,*) ' c =   ' , c
       stop
       end

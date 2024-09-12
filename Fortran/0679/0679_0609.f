       program main
       real * 4 a(30) , b(30)
       integer * 4 n , m , nn , mm
       data a/10*1.,10*2.,10*3./
       data b/10*1.,10*2.,10*3./
       n = 1
       m = 10
       nn = -1
       mm = n
       do 10 i=1,10,mm
         do 11 j=1,10,-nn
           do 12 k=1,10
             a(k) = a(k+mm)
 12        continue
           do 13 k1=11,20
             b(k1) = b(k1-nn)
 13        continue
 11      continue
 10    continue
       write(6,*) 'a= ',a,'b= ',b
       stop
       end

       complex*16 a(20),b(20),c(20)
       integer*4  il(20)
       data   a/20*(2.d0,1.d0)/,b/20*(1.d0,2.d0)/,c/20*(3.d0,2.d0)/
       do 10 i=1,20
  10     il(i) = i

       do 20 j=1,20
         a(j) = b(il(j)) + c(il(j))
         b(il(j)) = a(j) * c(il(j))
  20   continue
       write(6,*) a,b
       stop
       end

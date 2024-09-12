       logical*4 l1(10),l2(10),l3(10),l4(10)
       data l1/.true.,.false.,.true.,.false.,.true.,.false.,.true.,
     *         .false.,.true.,.false./
       data l2/.true.,.false.,.true.,.false.,.true.,.false.,.true.,
     *         .false.,.true.,.false./
       data l3/.true.,.false.,.true.,.false.,.true.,.false.,.true.,
     *         .false.,.true.,.false./
       data l4/.true.,.false.,.true.,.false.,.true.,.false.,.true.,
     *         .false.,.true.,.false./
       real   a(10),b(10),c(10)
       data   a/10*0.0/
       data   b/1,2,3,4,5,6,7,8,9,10/
       data   c/1,2,3,4,5,6,7,8,9,10/
       s =0.0

       do 10 i=2,10
         if ( l1(i) ) a(i) = b(i)
         if ( l2(i) ) write(6,*) a(i)
         if ( l3(i) ) s = s + 1.0
         if ( l4(i) ) c(i) = c(i-1) + a(i)
10     continue
       write(6,*) a
       write(6,*) c
       stop
       end

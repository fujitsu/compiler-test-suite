       real a(10)/1,2,3,4,5,6,7,8,9,10/
       integer imin,n

       n = 10
       imin = ismin(a,n)
       write(6,*) imin
       stop
       end

       function ismin(a,n)
       real a(n),smin
       integer ismin,imin,n

       smin = a(1)
       imin = 0
       do 10 i=1,n
         if (a(i).gt.smin) then
           smin = a(i)
           imin = i
         endif
 10       continue
       ismin = imin

       return
       end

       real*4 a(10)/1,2,3,4,5,6,7,8,9,10/
       real*4 b(10)/0,2,3,4,5,6,6,8,6,10/
       real*4 c(10)/1,2,3,5,5,6,7,9,9,0/
       real*4 d(10)/1,2,3,4,5,6,7,8,9,10/
       real*4 e(10)/1,1,2,2,1,6,7,1,0,10/
       logical*4 la(10),lb(10)/10*.false./,ls,lc(10)/10*.false./
       logical*4 ld(10)/10*.false./,le(10)/10*.false./
       data   la/.true.,.false.,.true.,.false.,.true.,
     1           .false.,.true.,.false.,.true.,.false./
       data n/10/

       do 100 i=1,n
         if (la(i)) then
           ls = a(i) .gt. b(i)
         else
           ls = c(i) .le. d(i)
         endif
         lb(i) = .not.ls
100    continue
       write(6,*) ' lb = ',lb

       do 200 i=1,n
         ls = e(i) .eq. 1.0
         if (la(i)) then
           ls = a(i) .gt. b(i)
         else
           ls = ls .or. lc(i)
         endif
         ld(i) = .not.ls
200    continue
       write(6,*) ' ld = ',ld

       do 300 i=1,n
         ls = e(i) .eq. 1.0
         if (la(i)) then
           ls = a(i) .gt. b(i) .and. ls
         else
           ls = ls .or. lc(i)
         endif
         le(i) = .not.ls
300    continue
       write(6,*) ' le = ',le
       stop
       end

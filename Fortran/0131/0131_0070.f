c
       program   main
       integer   limit,right,middle,times,terget
       parameter(limit=10000,terget=33)
       integer   a(10000)
c
       do 10 i=1,10000
             a(i) = i
   10  continue
c
       times = 0
       left  = 0
       right = limit
   20  middle = (right+left)/2
       times = times + 1
       if (a(middle) .gt. terget) then
           right = middle-1
           goto 20
c
       else if(a(middle) .lt. terget) then
           left = middle+1
           goto 20
c
       end if
c
   30  write(6,*) 'times = ',times,'terget = ',a(middle)
c
       if(times .eq. 11 .and. a(middle) .eq. 33) then
              write(6,*) 'test ===> ok'
       else
              write(6,*) 'test ===> ng'
       end if
       stop
       end

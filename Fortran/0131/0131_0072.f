c
       program   main
       integer   n
       parameter (n=20)
       integer   x(1:n),y(1:n),rst(1:n),tmp
c
       data  x     /10,12,11,13,1,2,5,4,8,9,6,14,3,7,15,20,18,17,19,16/
       data  y     /-1,1,-1,1,1,-1,1,-1,-1,-1,1,1,1,1,-1,1,1,1,1,-1/
       data  rst   /-1,2,-3,4,5,-6,7,-8,-9,-10,11,12,13,14,-15,
     +               16,17,18,19,-20/
c
       do 20 i=1,n-1,1
           do 10 j=i+1,n,1
                 if(x(i) .gt. x(j)) then
                       tmp=x(i)
                       x(i)=x(j)
                       x(j)=tmp
                 endif
   10      continue
   20  continue
       do 30 i=1,n,1
            x(i) = sign(x(i),y(i))
   30  continue
       do 40 i=1,n,1
            if(x(i) .ne. rst(i)) then
                write(6,*) 'test ==>ng'
                goto 50
            end if
   40  continue
       write(6,*) 'test ==> ok'
   50  stop
       end

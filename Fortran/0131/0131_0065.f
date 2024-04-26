c
       program   main
       integer   n
       parameter (n=20)
       integer   a(1:n),rst(1:n)
c
       data  a     /10,12,11,13,1,2,5,4,8,9,6,14,3,7,15,20,18,17,19,16/
       data  rst   /1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
c
       integer   i,j,k,l,r,m,temp
       integer   lstack(0:20),rstack(0:20)
       write(6,*) (a(m),m=1,20)
c
       k=0 
       l=1
       r=n
       lstack(0)=0
       rstack(0)=0
 500   if(l .ge. r) then
             l=lstack(k)
             r=rstack(k)
             k=k-1
             if(k .ge. 0) goto 500
             goto 4000
       endif
c
       i=l
       j=r+1
       temp=a(l)
 1000      j=j-1
           if(i .ge. j) goto 3000
           if(temp .le. a(j)) goto 1000
       a(i)=a(j)
 2000      i=i+1
           if(i .ge. j) goto 3000
           if(a(i) .le. temp) goto 2000
       a(j)=a(i)
       goto 1000
c
 3000  a(j)=temp
c
       k=k+1
       lstack(k)=j+1
       rstack(k)=r
       r=j-1
       goto 500
c
 4000  write(6,*) (a(i),i=1,20,1)
       do 5000 i=1,20,1
            if(a(i) .ne. rst(i)) then
                  write(6,*) 'test ==> ng'
            end if
 5000  continue
       write(6,*) 'test ==> ok'
       stop
       end

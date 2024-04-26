c
       program   main
       integer   n
       parameter (n=20)
       integer   x(1:n),y(1,n),z(1:n),rst(1:n)
c
       data  x     /10,12,11,13,1,2,5,4,8,9,6,14,3,7,15,20,18,17,19,16/
       data  y     /1,3,2,4,6,8,7,9,11,12,10,15,13,14,19,17,18,20,16,5/
       data  z     /1,4,2,6,3,8,7,10,9,12,11,14,13,19,17,15,20,16,5,18/
       data  rst   /1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
c
       call   sble(x,n)
       call   print(x,rst,n,'bubble sort')
       call   shell(y,n)
       call   print(y,rst,n,'shell  sort')
       call   heaps(z,n)
       call   print(z,rst,n,'heap   sort')
       stop
       end
c
       subroutine sble(a,n)
       integer n,i,j
       integer a(1:n)
c
       do 20 i=1,n-1,1
           do 10 j=i+1,n,1
                 if(a(i) .gt. a(j)) then
                       tmp=a(i)
                       a(i)=a(j)
                       a(j)=tmp
                 endif
   10      continue
   20  continue
       return
       end
c
       subroutine shell(a,n)
       integer n,i,j,gap,tmp
       integer a(1:n)
c
       gap=n/2
       do 10 while(gap .gt. 0)
            do 20 i=gap+1,n,1
                j=i-gap
                do 30 while(j .gt. 0)
                     if(a(j) .lt. a(j+gap)) then
                          goto 20
                     else
                        tmp=a(j)
                        a(j)=a(j+gap)
                        a(j+gap)=tmp
                     end if
                     j=j-gap
   30           continue
   20       continue
            gap=gap/2
   10  continue
c
       return
       end
c
       subroutine heaps(a,n)
       integer n,i,p,temp
       integer a(1:n)
       parameter(p=3)
c
       do 20 i=(n+p-2)/p,1,-1
             call heapfy(i,n,p,a,n)
   20  continue
c
       do 30 i=n,2,-1
             temp=a(i)
             a(i)=a(1)
             a(1)=temp
             call heapfy(1,i-1,p,a,n)
   30  continue
       return
       end
c
       subroutine heapfy(left,right,p,a,n)
       integer left,right,n,p
       integer i,j,q,temp,a(1:n)
c
       temp=a(left)
       i=left
  100  j=i*p-p+2
       if(j .gt. right) goto 300
       do 200 q=j+1,min(j+p-1,right),1
             if(a(j) .lt. a(q)) j=q
  200  continue
c
       if(temp .ge. a(j)) goto 300
             a(i)=a(j)
             i=j
             goto 100
  300  a(i)=temp
       return
       end
c
       subroutine print(a,rst,n,comt)
       integer n,i
       integer a(1:n),rst(1:n)
       character*11 comt
c
       write(6,*) 'the result of sorting (',comt, ')'
       do 10 i=1,n,1
           write(6,*) a(i)
   10  continue
c
       do 30 i=1,n,1
            if(a(i) .ne. rst(i)) then
                   write(6,*) ' test ===> ng'
                   goto 40
            end if
   30  continue
       write(6,*) ' test ===> ok'
c
   40  return
       end

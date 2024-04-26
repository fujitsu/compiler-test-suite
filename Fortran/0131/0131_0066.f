c
       program   main
       integer   reslt1,reslt2,reslt3,times
       integer   stack(2000,1),ans(9)
       data ans/19,23,19,28,16,20,21,29,20/
c
       do 5  i=1,2000
              stack(i,1)=0
   5   continue
c
       times=1
       do 10 i=1,20000
           reslt1=int(rand())
           reslt2=int(rand())
           reslt3=int(rand())
           if(reslt1 .eq.reslt2 .and. reslt1 .eq. reslt3) then
                 if(reslt1 .ne. 0) then
                      stack(times,1) = reslt1
                      times=times+1
                 end if
           end if
  10   continue
c
       call rstprt(stack,times,ans)
       end
c
       real function rand()
       integer c,k,r
       parameter (c=656329,k=19)
       save r
       data r/12345678/
       r=mod(k*r+c,100000001)
       rand=real(r)/10000000.0
       return
       end
c
      subroutine rstprt(r,ct,a)
      integer r(2000,1),ct,time(9),a(9)
      character canvas(9,100)
c
      do 5 i=1,9
           time(i) = 0
   5  continue
c
       do 10 i=1,ct-1
             if(r(i,1) .ne. 0) then
                  time(r(i,1))=time(r(i,1))+1
             end if
  10   continue
c
       do 20 i=1,9,1
             do 20 j=1,time(i),1
                  canvas(i,j) = '*'
  20   continue
c
       do 30 i=1,9,1
           write(6,*) i,i,i,'(',time(i),')','K',
     +                (canvas(i,j),j=1,time(i),1)
  30   continue
c
       do 40 i=1,9,1
            if(time(i) .ne. a(i)) then
                  write(6,*) 'test ===> ng'
                  return
            end if
  40   continue
c
       write(6,*) ' test ===> ok'
       return
       end

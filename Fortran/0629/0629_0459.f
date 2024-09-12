       program    main
       integer    n
       parameter (n=2)
       integer    mltmtx(1:2,1:2)
       integer    x(1:2,1:2),y(1:2,1:2),t(1:2,1:2)
       data       x     /10,30,20,40/
       data       y     /1, 3, 2, 4/
       data       mltmtx/70,150,100,220/
       call   madmlt(x,y,t,n)
       call   print(t,mltmtx,n)
       stop
       end
       subroutine madmlt(a,b,c,n)
       integer n,i,j
       integer a(1:n,1:n),b(1:n,1:n),c(1:n,1:n)
       do 10 i=1,n,1
            do 20 j=1,n,1
                c(i,j)=0
                do 30 k=1,n,1
                    c(i,j)=c(i,j)+a(i,k)*b(k,j)
   30           continue
   20       continue
   10  continue
       return
       end
       subroutine print(a,b,n)
       integer n,i,j
       integer a(1:n,1:n),b(1:n,1:n)
       do 30 i=1,n,1
           do 30 j=1,n,1
                 if(a(i,j) .ne. b(i,j)) then
                      write(6,*) ' test ===> ng'
                      goto 40
                 end if
   30  continue
       write(6,*) ' test ===> ok'
   40  return
       end

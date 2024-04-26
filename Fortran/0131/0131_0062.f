c
       program   main
       integer   n,m,as,rst
       parameter (n=2,m=3,rst=-41)
       integer   addmtx(1:2,1:2),mltmtx(1:2,1:2),dmtx(1:m,1:m)
       integer   x(1:2,1:2),y(1:2,1:2),
     +           z(1:2,1:2),t(1:2,1:2)
       data  x     /10,30,20,40/
       data  y     /1, 3, 2, 4/
       data  dmtx  /3,4,6,7,2,9,5,1,8/
c
       data  addmtx/11,33,22,44/
       data  mltmtx/70,150,100,220/
c
       call   madadd(x,y,z,n)
       call   print(z,addmtx,n,'z=x+y')
       call   madmlt(x,y,t,n)
       call   print(t,mltmtx,n,'z=x*y')
       call   detemt(dmtx,as,m)
c
       if(as .eq. rst) then
              write(6,*) 'test ===> ok'
       else
              write(6,*) 'test ===> ng'
       end if
c
       stop
       end
c
       subroutine madadd(a,b,c,n)
       integer n,i,j
       integer a(1:n,1:n),b(1:n,1:n),
     +         c(1:n,1:n)
c
       do 20 i=1,n,1
           do 10 j=1,n,1
                  c(i,j)=a(i,j)+b(i,j)
   10      continue
   20  continue
       return
       end
c
       subroutine madmlt(a,b,c,n)
       integer n,i,j
       integer a(1:n,1:n),b(1:n,1:n),
     +         c(1:n,1:n)
c
       do 10 i=1,n,1
            do 20 j=1,n,1
                c(i,j)=0
                do 30 k=1,n,1
                    c(i,j)=c(i,j)+a(i,k)*b(k,j)
   30           continue
   20       continue
   10  continue
c
       return
       end
c
       subroutine detemt(m,ans,n)
       integer n,ans
       integer m(1:n,1:n)
       integer r1,r2,r3

       r1=m(1,1)*m(2,2)*m(3,3)-m(1,1)*m(3,2)*m(2,3)
       r2=m(1,2)*m(2,3)*m(3,1)-m(1,2)*m(2,1)*m(3,3)
       r3=m(1,3)*m(2,1)*m(3,2)-m(1,3)*m(3,1)*m(2,2)
       ans = r1 + r2 + r3
       write(6,*) 'determinant = ',ans
c
       return
       end
c
       subroutine print(a,b,n,coment)
       integer n,i,j
       integer a(1:n,1:n),b(1:n,1:n)
       character*5 coment
       do 30 i=1,n,1
           do 30 j=1,n,1
                 if(a(i,j) .ne. b(i,j)) then
                      write(6,*) ' test ===> ng'
                      goto 40
                 end if
   30  continue
       write(6,*) ' test ===> ok'
c
   40  return
       end

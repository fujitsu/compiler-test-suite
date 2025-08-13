       real*8 a(100,100),b(100,100)
       integer*4 c(100,100)
       real*8 a2(200,100),b2(200,100)
       data a/10000*0/,a2/20000*0/
       do j=1,100
       do i=1,100
         b(i,j)=i
         c(i,j)=i
       enddo
       do i=1,200
         b2(i,j)=i
       enddo
       enddo
       do j=1,100
       do i=1,100
         a(i,j)=b(c(i,j),j)+i
       enddo
       do i=1,100
         a2(i,c(i,j))=b2(i,j)+i
       enddo
       enddo
       write(3,*) a(5,5)
       write(3,*) a2(5,5)
       print *,'pass'
       end

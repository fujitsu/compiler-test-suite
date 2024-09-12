       real*8 a(100,100),b(100,100)
       data a/10000*0/,b/10000*2./
       do j=1,100
       do i=1,100
         a(i,j)=b(i,j)+i
       enddo
       enddo
       write(6,*) a(5,5)
       end

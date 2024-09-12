       real*8 a(1000,100),b(1000,100)
       data a/100000*0/,b/100000*2./
       do j=1,100
       do i=1,1000
         a(i,j)=b(i,j)+i
       enddo
       enddo
       write(6,*) a(5,5)
       end

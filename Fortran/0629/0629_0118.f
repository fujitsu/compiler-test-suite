       real*8 a(100,100),b(100,100)
       real*8 a2(200,100),b2(200,100)
       data a/10000*0/,b/10000*2./,a2/20000*0/,b2/20000*3./
       do j=1,100
       do i=1,100
         a(i,j)=b(i,j)+i
       enddo
       do i=1,200
         a2(i,j)=b2(i,j)+i
       enddo
       enddo
       write(6,*) a(5,5)
       write(6,*) a2(5,5)
       do j=1,100
       do i=1,100
         a(i,j)=b(i,j)+i
       enddo
       do i=1,200
         a2(i,j)=b2(i,j)+i
       enddo
       enddo
       write(6,*) a(5,5)
       write(6,*) a2(5,5)
       end

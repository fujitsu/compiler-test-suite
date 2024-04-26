       real*8 a(10),b(10)
       data b/10*0.0/
       do i=1,10
         a(i) = sin(b(i))
       enddo
       write(6,*) a
       end

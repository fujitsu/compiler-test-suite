           real*8 a(100),b(100)
           integer*4 c(100)
           a=4
           b=5
           c=6
           call sub(a,b,c)
           print *,"compile OK"
           end

           subroutine sub(a,b,c)
           real*8 a(100),b(100)
           integer*4 c(100)

           do i=1,100,2
             a(i) = b(c(i))
             a(i+1) = b(c(i+1))
           enddo
           end

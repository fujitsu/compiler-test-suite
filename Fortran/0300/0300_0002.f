           real*8 a(100),b(100)
           integer c(100)
           a=5
           b=7
           c=8
           call sub(a,b,c,100)
           print *, a(1)
           end

           subroutine sub(a,b,c,n)
           real*8 a(n),b(n)
           integer c(n)

           do i=1,n
             a(i) = b(c(i))
           enddo

           end

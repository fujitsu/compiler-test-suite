           real*8 a(10),b(60,60)
           integer c(10),k
           k=1
           do j=1,60
           do i=1,60
             b(i,j) = i
           enddo
           enddo

           do i=1,10
             a(i) = i
             c(i) = i
           enddo

           call sub(a,b,c,10,60,k)
           print *,a(1)
           end

           subroutine sub(a,b,c,n,nn,k)
           real*8 a(n),b(nn,nn)
           integer c(n),k,n

           do i=1,n
             k=k+i
             a(i) = b(c(i),k)
           enddo

           end

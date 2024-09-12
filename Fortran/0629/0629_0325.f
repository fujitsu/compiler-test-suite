        common a,b,c
        real*8 a(4097,4096),b(4097,4096),c(4097,4096)
        a=1.
        b=2.
        c=3.
        do j=1,1024
        do i=j,1024
          a(i,j)=b(i,j)+c(i,j)
        enddo
        enddo
        write(6,*) a(1,1),i
        end

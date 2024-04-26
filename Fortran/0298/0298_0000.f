       parameter(m=10,n1=10,n2=10,n3=10)
       real * 4 a(m,m),b(m,m),c(m,m)
       a = 1;b=1;c=1
       call sub(a,b,c,m,n1,n2,n3)
       write(6,*) a
       stop
       end 
      subroutine sub(a,b,c,m,n1,n2,n3)
      real * 4 a(m,m),b(m,m),c(m,m)
      do j=1,n1
      do k=1,n2
      do i=1,n3
          a(j,i) = a(j,i)-b(i,k)*c(k,j)
      enddo
      enddo
      enddo
      return
      end


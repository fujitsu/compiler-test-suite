         real*8 sum,w(1000),rowstr(1000),a(1000),p(1000)
         integer colidx(1000),lastrow,firstrow

         lastrow=999
         firstrow=1
         do i=1,1000
           a(i)=2
           p(i)=1000-i+1
           colidx(i)=i
           rowstr(i)=i
         enddo
         do j=1,lastrow-firstrow+1
            sum = 0.d0
            do k=rowstr(j),rowstr(j+1)-1
               sum = sum + a(k)*p(colidx(k))
            enddo
            w(j) = sum
         enddo
         write(6,*) sum
         end

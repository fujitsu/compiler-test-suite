        integer*4 s/0/
        integer*4 a(1000)/1000*1/
        integer*4 b(1000)/1000*1/
        do i=1,1000
          call sub1(s,a,b)
        enddo
        write(6,*) 's = ',s,b(1)
        end

        subroutine sub1(s,a,b)
        integer*4 s,a(1000) ,b(1000)
        do j=1,1000
          b(j) = s
        do i=1,1000
          s = s + a(i)
        enddo
        enddo
        return
        end

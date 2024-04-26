      real a(10)/10*0/
      integer*1 i1(10)
      call test1(i1,10,a,1)
      write(6,*) a
      end
        subroutine test1(i1,n,a,m)
        integer n,m
        integer*1 i1(n)
        real    a(m)
        do i=1,10,size((/(k,k=1,m)/))
          a(i) = 1
        end do
        end

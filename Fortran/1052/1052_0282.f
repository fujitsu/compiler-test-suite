      subroutine foo(x)
      integer i
      integer*1::x(100)
      integer*1::y(100)
      y=10 
!$omp simd reduction(+:x)
      do i=1,100
        x(i)=x(i)+1_1
      enddo
      do i=1,100
        y(i)=y(i)+1_1
      enddo
      do i=1,100
        if (x(i).ne.y(i)) then
          print*,"NG",i,x(i),y(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      integer*1::a(100)
      a=10
      call foo(a)
      end

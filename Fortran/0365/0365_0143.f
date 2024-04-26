      integer ::a(1000,2),b(1000),c(1000),d(1000),e(1000)
      integer ::k=1000,n=1,m
      common /com/m


      do i=1,2
        call dummy()
        do j=1,1000
          a(j,i)=j+i*10
        end do
      end do

      do i=1,1000
        b(i)=i
      end do
      do i=k,n,m
        c(i)=i
      end do
      do i=1,1000
        d(i)=i
      end do
      do i=1000,1,-1
        e(i)=i
      end do

      call sub(a,b,d,e)
      print *,'ok'
      end

      subroutine sub(a,b,d,e)
      integer ::a(1000,2),b(1000),d(1000),e(1000)
      do i=1,2
        do j=1,1000
          if (a(j,i).ne.(j+i*10))  stop 'ng'
        end do
      end do
      do i=1,1000
        if (b(i).ne.i)  stop 'ng'
        if (d(i).ne.i)  stop 'ng'
        if (e(i).ne.i)  stop 'ng'
      end do

      end

      subroutine dummy()
      end

      block data bk
      common /com/m
      integer ::m=-1
      end

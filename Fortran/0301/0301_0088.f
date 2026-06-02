      integer*8  a(10)/10*1/,b(10)/10*5/
      integer*8 i
      do i=1,10
         call sub2(a,10_8,b(i))
      enddo
      write(6,*) a
      write(6,*) b

      end

      subroutine sub2(i4,n,jj)
      integer*8 n,jj
      integer*8 i4(n)
      do i=1,n
        call sub3(jj)
        i4(i) = i
      enddo
      return
      end

      subroutine sub3(kkk)
      integer*8 kkk
      kkk = kkk + 1
      return
      end

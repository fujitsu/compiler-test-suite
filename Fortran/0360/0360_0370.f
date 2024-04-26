      call gt
      call ge
      call le
      call lt
      call eq
      call ne
      call ngt
      call nge
      call nlt
      call nlt
      end

      subroutine gt()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).gt.3) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine ge()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).ge.3) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end

      subroutine lt()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).lt.3) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine le()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).le.3) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end

      subroutine eq()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).eq.3) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine ne()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).ne.3) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end

      subroutine ngt()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).gt.3)) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine nge()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).ge.3)) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end

      subroutine nlt()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).lt.3)) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end
      subroutine nle()
      integer l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 a(10)/10*0/
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).le.3)) then
            a(i) = 3 + b(i)
         else
            a(i) = 3 - b(i)
         endif
      enddo
      write(6,*) a
      return
      end

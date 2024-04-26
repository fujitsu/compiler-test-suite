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
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).gt.3) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end
      subroutine ge()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).ge.3) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end


      subroutine lt()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).lt.3) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end
      subroutine le()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).le.3) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end


      subroutine eq()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).eq.3) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end
      subroutine ne()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (l(i).ne.3) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end


      subroutine ngt()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).gt.3)) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end
      subroutine nge()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).ge.3)) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end


      subroutine nlt()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).lt.3)) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end
      subroutine nle()
      real  l(10)/1,2,2,3,3,3,4,4,4,4/
      real*4 n
      integer*4 b(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
         if (.not.(l(i).le.3)) then
            n = 3 + b(i)
         else
            n = 3 - b(i)
         endif
      enddo
      write(6,*) n
      return
      end


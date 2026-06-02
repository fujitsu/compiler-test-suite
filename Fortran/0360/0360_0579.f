      integer*8 i8a(16),i8b(16),res1(16),res2(16)
      logical*8 l8a(16),l8b(16),res3(16)
      integer*4 i4a(16),i4b(16)
      logical*4 l4a(16),l4b(16)

      do i=1,16
         i4a(i) = i
         res1(i) = i
         l4a(i) = mod(i,2).eq.0
         res3(i) = l4a(i)
         if (l4a(i)) then
            res2(i) = 1
         else
            res2(i) = 0
         endif
      enddo

      do i=1,16
         i8a(i) = i4a(i)
      enddo
      do i=1,16
         i8b(i) = l4a(i)
      enddo
      do i=1,16
         if (i8a(i).ne.res1(i).or.i8b(i).ne.res2(i)) then
            write(6,*) i8a
            write(6,*) res1
            write(6,*) i8b
            write(6,*) res2
            stop 1
         endif
      enddo

      do i=1,16
         l8a(i) = i4a(i)
      enddo
      do i=1,16
         l8b(i) = l4a(i)
      enddo

      do i=1,16
         if (merge(1,0,l8a(i)).ne.1.or.l8b(i).neqv.res3(i)) then
            write(6,*) l8a
            write(6,*) l8b
            write(6,*) res3
            stop 2
         endif
      enddo

      do i=1,16
         i4b(i) = i8a(i)
      enddo
      do i=1,16
         l4b(i) = i8b(i)
      enddo

      do i=1,16
         if (i4b(i).ne.res1(i).or.merge(1,0,l4b(i)).ne.res2(i)) then
            write(6,*) i4b
            write(6,*) res1
            write(6,*) l4b
            write(6,*) res2
            stop 3
         endif
      enddo

      do i=1,16
         l4b(i) = l8b(i)
      enddo

      do i=1,16
         if (merge(1,0,l4b(i)).ne.res2(i)) then
            write(6,*) l4b
            write(6,*) res2
            stop 4
         endif
      enddo
      write(6,*) ' ok '

      end

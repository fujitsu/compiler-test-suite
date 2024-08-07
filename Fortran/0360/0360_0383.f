      real*4 r4a(16,16),r4b(16,16),r4c(16,16)
      real*4 res(16,16)

      do i=1,16
         do j=1,16
            r4a(i,j) = 0
            if (i.gt.j) then
               r4b(i,j) = i
            else
               r4b(i,j) = -i
            endif
            if (i*2.gt.j) then
               r4c(i,j) = -i
            else
               r4c(i,j) = i
            endif
         enddo
      enddo

      do j=1,16
         do i=1,16
            r4a(i,j) = sign(r4b(i,j),r4c(i,j))
         enddo
      enddo

      write(1,*)
      do j=1,16
         do i=1,16
            if (r4c(i,j) .gt.0) then
               res(i,j) = abs(r4b(i,j))
            else
               res(i,j) = -abs(r4b(i,j))
            endif
         enddo
      enddo
      call sub1(r4a,res,1)

      do j=1,16
         do i=1,16
            r4a(i,j) = sign(2.0,r4c(i,j))
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
            if (r4c(i,j) .gt.0) then
               res(i,j) = 2
            else
               res(i,j) = -2
            endif
         enddo
      enddo
      call sub1(r4a,res,2)

      do j=1,16
         do i=1,16
            r4a(i,j) = sign(r4b(i,j),2.0)
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
            res(i,j) = abs(r4b(i,j))
         enddo
      enddo
      call sub1(r4a,res,3)

      do j=1,16
         do i=1,16
            r4a(i,j) = sign(-2.0,r4c(i,j))
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
            if (r4c(i,j) .gt.0) then
               res(i,j) = 2
            else
               res(i,j) = -2
            endif
         enddo
      enddo
      call sub1(r4a,res,4)


      do j=1,16
         do i=1,16
            r4a(i,j) = sign(r4b(i,j),-2.0)
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
               res(i,j) = -abs(r4b(i,j))
         enddo
      enddo
      call sub1(r4a,res,5)
      end

      subroutine sub1(r4a,res,ii)
      real*4 r4a(16,16),res(16,16)

      do j=1,16
         do i=1,16
            if (r4a(i,j).ne.res(i,j)) goto 30
         enddo
      enddo

      write(6,*) ' ## test',ii,' OK ## '
      goto 40
 30   write(6,*) ' ## test',ii,' NG ## '
      write(6,*) ' calc ',r4a
      write(6,*) ' res  ',res
 40      continue
      return
      end

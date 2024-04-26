      real*8 r8a(16,16),r8b(16,16),r8c(16,16),res(16,16)

      do i=1,16
         do j=1,16
            r8a(i,j) = 0
            if (i.gt.j) then
               r8b(i,j) = i
            else
               r8b(i,j) = -i
            endif
            if (i*2.gt.j) then
               r8c(i,j) = -i
            else
               r8c(i,j) = i
            endif
         enddo
      enddo

      do j=1,16
         do i=1,16
            r8a(i,j) = sign(r8b(i,j),r8c(i,j))
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
            if (r8c(i,j) .gt.0) then
               res(i,j) = abs(r8b(i,j))
            else
               res(i,j) = -abs(r8b(i,j))
            endif
         enddo
      enddo

      call sub1(r8a,res,1)


      do j=1,16
         do i=1,16
            r8a(i,j) = sign(2.0,r8c(i,j))
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
            if (r8c(i,j) .gt.0) then
               res(i,j) = 2.0
            else
               res(i,j) = -2.0
            endif
         enddo
      enddo
      call sub1(r8a,res,2)

      do j=1,16
         do i=1,16
            r8a(i,j) = sign(r8b(i,j),2.0)
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
            res(i,j) = abs(r8b(i,j))
         enddo
      enddo
      call sub1(r8a,res,3)

      do j=1,16
         do i=1,16
            r8a(i,j) = sign(-2.0,r8c(i,j))
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
            if (r8c(i,j) .gt.0) then
               res(i,j) = 2.0
            else
               res(i,j) = -2.0
            endif
         enddo
      enddo
      call sub1(r8a,res,4)


      do j=1,16
         do i=1,16
            r8a(i,j) = sign(r8b(i,j),-2.0)
         enddo
      enddo
      write(1,*)
      do j=1,16
         do i=1,16
               res(i,j) = -abs(r8b(i,j))
         enddo
      enddo
      call sub1(r8a,res,5)
      end

      subroutine sub1(r8a,res,ii)
      real*8 r8a(16,16),res(16,16)

      do j=1,16
         do i=1,16
            if (r8a(i,j).ne.res(i,j)) goto 30
         enddo
      enddo

      write(6,*) ' ## test',ii,' OK ## '
      goto 40
 30   write(6,*) ' ## test',ii,' NG ## '
      write(6,*) ' calc ',r8a
      write(6,*) ' res  ',res
 40   continue
      return
      end

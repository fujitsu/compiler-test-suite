      subroutine sub(a,n)
      real*4 a(9)

      do i=n,9
         a(i) = acosh(a(i))
      end do
      end

      real*4 a(10)/10*2/
      call sub(a,1)
      call check(a,1)
      a=2
      call sub(a,6)
      call check(a,2)
      a=2
      call sub(a,10)
      call check(a,3)
      write(6,*) "ok"
      end

      subroutine check(a,num)
      real*4 a(10)
      r = acosh(2.0)
      if (num .eq. 1) then
         is = 1
         ie = 9
      else if (num .eq. 2) then
         is = 6
         ie = 9
      else
         is = 10
         ie = 9
      endif

      ierr = 0
      do i=1,10
         if (i .ge. is .and. i.le.ie) then
            if ( abs(a(i)-r) .gt. 0.000002) then
               write(6,*) a(i),r
               ierr = 1
               goto 10
            endif
         else
            if (a(i) .ne. 2.0) then
               write(6,*) a(i),2.0
               ierr = 1
               goto 10
            endif
         endif
      enddo
 10   continue
      if (ierr .eq. 1) then
         write(6,*) "ng",num
         write(6,*) a
      endif
      return
      end

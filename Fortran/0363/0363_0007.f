      program main
      real*4 r4a(65),r4b(65),r4c(65),res(65)
      call init(r4a,r4b,r4c,65,res)
      do i=1,2
        call test(r4a,r4b,r4c,65)
      enddo
      do i=1,65
         if(r4a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(r4a,r4b,r4c,n1,res)
      real*4  r4a(n1),r4b(n1),r4c(n1),res(n1)

      do i=1,65
        r4a(i) = 0
        if (i .gt. n1/2) then
           r4b(i) = i
           r4c(i) = i
        else
           r4b(i) = -i
           r4c(i) = -i
        endif
      enddo


      do i=1,65
         if (r4b(i) .gt.  r4c(i)) then
            res(i) = r4b(i) - r4c(i)
         else
            res(i) = 0
         endif
      enddo
         
      end

      subroutine test(r4a,r4b,r4c,n1)
      real*4 r4a(n1),r4b(n1),r4c(n1)
      
      do i=1,65
        r4a(i) = dim(r4b(i) , r4c(i))
      enddo
      
      end

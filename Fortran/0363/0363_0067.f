      program main
      integer(4) a(65),b(65),c(65),nn,res(65),dd
      common //dd
      dd = 1000
      call init(a,b,c,nn,res,65)
      do i=1,2
        call test(a,b,c,65)
      enddo

         if(dd .ne. 1000) goto 10

      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) dd

 20   continue
      end
 
      subroutine init(a,b,c,nn,res,n1)
      integer(4)  a(n1),b(n1),c(n1),nn,res(n1)
      nn = 0

      do i=1,65         
         a(i) = 0
         b(i) = i
         c(i) = i
         if (i .le. 10 .or. i.ge.40) then
            res(i) = 0
         else 
            res(i) = 1
         endif
      enddo
      end

      subroutine test(a,b,c,n1)
      integer(4) a(n1),b(n1),c(n1),nn
      common //dd
      
      do i=1,65
         IF (a(i) .ne. 1) then
         ELSE IF (b(i).gt.10000) THEN
            dd = c(i) * 4
         END IF
      enddo
      
      end






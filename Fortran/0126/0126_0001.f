      real*8 a(16),b(16),c(16)
      real*8 resa(16),resb(16),resc(16),resd(16)
      common /sbm_area/a,b,c
      common /res_area/resa,resb,resc,resd

      call init
      j = 1
      do i=1,16
         a(i) = b(i) + c(i) 
      enddo
      do i=1,16
         if (a(i) .ne. resa(i)) goto 20
      enddo

      j = j + 1
      do i=1,16
         a(i) = b(i) - c(i) 
      enddo
      do i=1,16
         if (a(i) .ne. resb(i)) goto 20
      enddo

      j = j + 1
      do i=1,16
         a(i) = b(i) * c(i) 
      enddo
      do i=1,16
         if (a(i) .ne. resc(i)) goto 20
      enddo

      j = j + 1
      do i=1,16
         a(i) = b(i) / c(i) 
      enddo
      do i=1,16
         if (a(i) .ne. resd(i)) goto 20
      enddo

      write(6,*) ' ## add,sub,mult,div OK ## '
      goto 10
 20   write(6,*) ' ## add,sub,mult,div NG ## ',j
      write(6,*) a
 10   continue
      end

      subroutine init
      real*8 a(16),b(16),c(16)
      real*8 resa(16),resb(16),resc(16),resd(16)
      common /sbm_area/a,b,c
      common /res_area/resa,resb,resc,resd

      do i=1,16
         a(i) = 0
         b(i) = 16*i
         c(i) = 2
         resa(i) = b(i) + c(i)
         resb(i) = b(i) - c(i)
         resc(i) = b(i) * c(i)
         resd(i) = b(i) / c(i)
      enddo
      return
      end

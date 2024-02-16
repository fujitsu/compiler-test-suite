      complex*16 a(16),b(16),c(16)
      complex*16 resa(16),resb(16),resc(16),resd(16)
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
         if ( abs(a(i)-resd(i)) .gt. 0.00005) goto 20
      enddo

      write(6,*) ' ## add,sub,mult,div OK ## '
      goto 10
 20   write(6,*) ' ## add,sub,mult,div NG ## ',j
      write(6,*) a
 10   continue
      end

      subroutine init
      complex*16 a(16),b(16),c(16)
      complex*16 resa(16),resb(16),resc(16),resd(16)
      common /sbm_area/a,b,c
      common /res_area/resa,resb,resc,resd

      do i=1,16
         a(i) = 0
         b(i) = cmplx(32*i,16*i)
         c(i) = (2.,4.)
         resa(i) = b(i) + c(i)
         resb(i) = b(i) - c(i)
         resc(i) = b(i) * c(i)
         resd(i) = b(i) / c(i)
      enddo
      return
      end

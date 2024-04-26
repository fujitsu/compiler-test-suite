      subroutine sub(a4,a8,a16,n)
      complex*8 a4(15)
      complex*8 a8(15)
      complex*16 a16(15)
      do i=n,15
         a4(i) = a4(i) + 5
      end do
      do i=n,15
         a8(i) = a8(i) + 5
      end do
      do i=n,15
         a16(i) = a16(i) + 5
      end do
      end

      complex*8 a4(30)/30*1/,res4(30)/30*1/
      complex*8 a8(30)/30*1/,res8(30)/30*1/
      complex*16 a16(30)/30*1/,res16(30)/30*1/
      n = 0
      call sub(a4,a8,a16,1)
      n = n + icheck(a4,a8,a16,res4,res8,res16, 1)
      call sub(a4,a8,a16,10)
      n = n + icheck(a4,a8,a16,res4,res8,res16, 10)
      call sub(a4,a8,a16,20)
      n = n + icheck(a4,a8,a16,res4,res8,res16, 20)

      if (n.eq.0) then
         write(6,*) "ok"
      else
         write(6,*) "ng ",n
         write(6,*) a8
         write(6,*) a16
      endif
      end

      integer function icheck(a4,a8,a16,res4,res8,res16, n)
      complex*16 a16(30),res16(30)
      complex*8 a4(30),res4(30)
      complex*8 a8(30),res8(30)

      do i=n,15
         res4(i) = res4(i) + 5
         res8(i) = res8(i) + 5
         res16(i) = res16(i) + 5
      enddo
      icheck=0
      do i=1,30
         if (a16(i) .ne. res16(i) .or.
     +       a4(i) .ne. res4(i) .or. a8(i) .ne. res8(i)) then
            icheck=1
         endif
      enddo
      return
      end

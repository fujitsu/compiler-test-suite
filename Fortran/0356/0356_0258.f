      subroutine sub(a1,a2,a4,a8,n)
      integer*1 a1(17)
      integer*2 a2(17)
      integer*4 a4(17)
      integer*8 a8(17)
      do i=n,17
         a1(i) = a1(i) + 5
      end do
      do i=n,17
         a2(i) = a2(i) + 5
      end do
      do i=n,17
         a4(i) = a4(i) + 5
      end do
      do i=n,17
         a8(i) = a8(i) + 5
      end do
      end

      integer*1 a1(30)/30*1/,res1(30)/30*1/
      integer*2 a2(30)/30*1/,res2(30)/30*1/
      integer*4 a4(30)/30*1/,res4(30)/30*1/
      integer*8 a8(30)/30*1/,res8(30)/30*1/
      n = 0
      call sub(a1,a2,a4,a8,1)
      n = n + icheck(a1,a2,a4,a8,res1,res2,res4,res8, 1)
      call sub(a1,a2,a4,a8,15)
      n = n + icheck(a1,a2,a4,a8,res1,res2,res4,res8, 15)
      call sub(a1,a2,a4,a8,20)
      n = n + icheck(a1,a2,a4,a8,res1,res2,res4,res8, 20)

      if (n.eq.0) then
         write(6,*) "ok"
      else
         write(6,*) "ng ",n
         write(6,*) a1
         write(6,*) a2
         write(6,*) a4
         write(6,*) a8
      endif
      end

      integer function icheck(a1,a2,a4,a8,res1,res2,res4,res8, n)
      integer*1 a1(30),res1(30)
      integer*2 a2(30),res2(30)
      integer*4 a4(30),res4(30)
      integer*8 a8(30),res8(30)

      do i=n,17
         res1(i) = res1(i) + 5
         res2(i) = res2(i) + 5
         res4(i) = res4(i) + 5
         res8(i) = res8(i) + 5
      enddo
      icheck=0
      do i=1,30
         if (a1(i) .ne. res1(i) .or. a2(i) .ne. res2(i) .or.
     +       a4(i) .ne. res4(i) .or. a8(i) .ne. res8(i)) then
            icheck=1
         endif
      enddo
      return
      end

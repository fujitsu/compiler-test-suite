      call pro
      print *,'pass'
      end
      subroutine pro
      integer t(20)
      integer i,j,k
      character*11,dimension(20) :: dc
      character*10 cht/'abcdefghij'/
      do 1  i=1,15,1
         t(i)=i
    1 continue
      do 10 i=1,20,1
         t(i) = t(i) + t(i+1)
   10 continue
      k=20
      do i=1,k
         do j=1,10
            dc(i)(j:j+1)=cht(j:j)
         end do
      end do
      i = 0
      do 20
         i = i + 1
         if(i.gt.20) goto 30
         t(i) = i
         call sub(t(i))
         cycle
   20 continue
   30 i = 0
      call sub(t(3))
      call sub(i)
      end

      subroutine sub(t)
      integer t(*)
      t(1) = 10
      return
      end

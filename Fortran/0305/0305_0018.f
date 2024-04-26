      real*8,allocatable,dimension(:)::a,b,c
      logical flg
      do i=1,10
         flg = i.gt.100
         n = i-10
      enddo
      
      if (flg) then
         allocate (a(100))
         allocate (c(100))
      endif
      allocate (b(100))
      
      do i=1,n
         if (flg) then
            a(i) = 2
            b(i) = 2
            c(i) = 2
         endif
         c(i) = c(i) + 1
      enddo
      if (flg) then
         write(6,*) a(1),b(1),c(1)
      endif
      write(6,*) "OK"
      end

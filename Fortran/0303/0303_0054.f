      real*8 a(5,5,5)

      do i=1,4
         do i1=1,4
            a(i,i1,1) = 1.0
            do j=1,1
               a(1,1,1) = a(1,1,1) + 10.0
            enddo
         enddo
      enddo
      if (a(1,1,1) .eq. 161.d+0) then
        write(6,*) "OK"
      else
        write(6,*) "NG"
        write(6,*) a(1,1,1)
      endif
      end

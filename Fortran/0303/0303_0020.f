      real c(2,4)/8*0/
      real res(2,4)/8*1/
      do 2  i=1,2
         if( .true. ) then
            do 1  j=1,4
               c(i,j)=1
 1          continue
         endif
 2    continue

      do i=1,2
         do j=1,4
            if (c(i,j) .ne. res(i,j)) goto 10
         enddo
      enddo
      write(6,*) "ok"
      goto 20
 10   write(6,*) "ng"
      write(6,*) c
      write(6,*) res
 20   continue
      end


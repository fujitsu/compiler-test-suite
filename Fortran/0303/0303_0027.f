      integer*4  a(10),b(10),c(10),d(10),err/1/
      integer*4  resa(10),resb(10)
      data c/1,2,3,4,5,6,7,8,9,10/
      data d/10,9,8,7,6,5,4,3,2,1/
      data resa/2,3,4,5,6,7,8,9,10,11/
      data resb/8,7,6,5,4,3,2,1,0,-1/

      do j=1,10
         a(j) = 0
         b(j) = 0
         i = 1
         n = 10
      enddo

      do i=i,10
         a(i) = c(i) + 1
         b(i) = d(i)  - 2
      enddo

      do i=1,10
         if (a(i).ne.resa(i) .or. b(i).ne.resb(i)) goto 99
      enddo
      
      err = err + 1

      i = 1
      do i=i,n
         a(i) = i
         b(i) = i
         c(i) = i
         d(i) = i
      enddo

      do i=1,10
         if (a(i).ne.i .or. b(i).ne.i .or.
     +        c(i).ne.i .or. d(i).ne.i) goto 99
      enddo

      write(6,*) " ok"
      goto 100
 99   write(6,*) " ## error  ",err," ##"
      write(6,*) a
      write(6,*) b
      if (err .eq.1) then
         write(6,*) resa
         write(6,*) resb
      else
         write(6,*) c
         write(6,*) d
      endif
 100  continue
      END


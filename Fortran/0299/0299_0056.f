      real*8 a(16),b(16),c(16),d(16),res(16)
      common //a,b,c,d,res
      call init
      do i=1,16
         a(i) = b(i) * c(i) +d(i)
      enddo

      do i=1,16
        if (a(i) .ne. res(i)) goto 20
      enddo
      write(6,*) ' ## ok ## '
      goto 10
20    write(6,*) ' ## ng ## '
      write(6,*) a
      write(6,*) res
10    continue
      end

      subroutine init
      real*8 a(16),b(16),c(16),d(16),res(16)
      common //a,b,c,d,res
      do i=1,16
        a(i) = 0
        b(i) = i
        c(i) = 2
        d(i) = i
        res(i) = i*2+i
      enddo
      return
      end

      real*4 a(20)
      do i=1,20
         a(i) = i
         n = i-10
         m = i-30
         mm = i-10
         nn = mm + 1
      enddo

      write(6,*) n,m,mm

      do i=1,10
         a(i) = a(i+n) - 2
      enddo
      write(*,*) a

      do i=11,20
         a(i) = a(i+m) - 2
      enddo
      write(*,*) a

      do i=1,mm
         a(i) = a(i+n) - 2
      enddo
      write(*,*) a

      do i=nn,20
         a(i) = a(i+m) - 2
      enddo
      write(*,*) a

      do i=nn,20
         a(i) = a(i+m) - 2
      enddo
      write(*,*) a
      end


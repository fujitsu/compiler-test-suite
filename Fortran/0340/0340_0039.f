      program main
      real*4  a(11),b(11),c(11),d(11),e(11)
      real*4  aa(11)
      real*4  resa(11)

      call init(a,b,c,d,e,resa,11)
      call sub1(aa,b,c,d,11)
      do i=1,11
         if(aa(i) .ne. resa(i)) goto 10
      enddo
      write (6,*) "ok"
      goto 20
 10   write (6,*) "NG"
      write(6,*) "resa"
      write(6,*) resa
      write(6,*) "result"
      write(6,*) "aa"
      write(6,*) aa
 20   continue
      end

      subroutine init(a,b,c,d,e,resa,n)
      real*4  a(n),b(n),c(n),d(n),e(n)
      real*4  resa(n)

      do i=1,n
        b(i) = i+1
        c(i) = i+2
        d(i) = i+3
        e(i) = i+3
      enddo

      do i=n,1,-1
         a(i) = b(i) * c(i) + i
         a(i) = a(i) + c(i) * d(i) + i
         resa(i) = a(i)
      enddo
      end

      subroutine sub1(a,b,c,d,n)
      real*4  a(n),b(n),c(n),d(n)

      do i=n,1,-1
         a(i) = b(i) * c(i) + i
         a(i) = a(i) + c(i) * d(i) + i
      enddo
      end

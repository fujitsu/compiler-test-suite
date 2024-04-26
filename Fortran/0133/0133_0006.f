      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/,d(10)/10*0/
      integer *4,parameter::ANS=4
      real    *4 p(10)/10*0.0/,q(10)/10*0.0/
      logical *1 e(10)/10*.false./
      logical *4 f(10)/10*.false./
      n = cos(0.0)*10
      m = cos(0.0)*5

      do l=1,n
         if (mod(l,2) .eq. 0) then
            e = .true.
            b(l) = 1
         endif
         if (mod(l,3) .eq. 0) then
            f = .true.
         endif
         c = mod(l,m)
         d = mod(l,n)
      end do

      p = real(c)
      q = real(d)

      call sub1(n,m,a,b+c,c+d,p,q(1:m),e,f)

      if (sum(a).eq.ANS) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif

      stop
      end

      subroutine sub1(n,m,a,bc,cd,p,q,e,f)
      integer *4 n,m
      integer *4 a(1:n),bc(1:n),cd(1:n)
      logical *1 e(1:n)
      logical *4 f(1:n)
      real    *4 p(1:n),q(1:m)

      integer *4 b(1:n)

      b(1:n) = bc(1:n) - cd(1:n)

      where (e)
        a = a + b
      elsewhere
        a = a - b
      endwhere

      where (f)
        p = p + real(b)
      elsewhere
        p = p - real(b)
      endwhere

      where (e(1:m))
        a(n-m+1:n) = bc(1:m) + cd(2:m+1)
      elsewhere
        a(3:m+2) = bc(2:m+1) - cd(n-m:n-1)
      endwhere

      where (f(1:m))
        q = real(a(1:m) + bc(1:m) - cd(2:m+1))
      elsewhere
        q = real(a(1:m) + bc(2:m+1) - cd(n-m:n-1))
      endwhere


      end subroutine sub1

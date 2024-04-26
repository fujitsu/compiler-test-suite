      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/,d(10)/10*0/
      integer, parameter::ANS=121
      logical *1 e(10)/10*.false./,f(10)/10*.false./
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
         c(l) = mod(l,m) + 1
         d = mod(l,n)
         i = mod(n,l)
      end do

      call sub1(n,m,a,c,b+c,c+d,e,f,(e(i+1:m) .or. f(i+2:m+1)))

      if (sum(a).eq.ANS) then
         print *,"OK"
      else
         write(6,*) a
         print *,"NG"
      endif

      stop
      end

      subroutine sub1(n,m,a,c,bc,cd,e,f,g)
      integer *4 n,m
      integer *4 a(1:n),c(1:n),bc(1:n),cd(1:n)
      logical *1 e(1:n),f(1:n),g(1:m)

      integer *4 b(1:n),d(1:n)

      b = bc - cd

      where (e)
         a = a + bc
         b = b + 1
      elsewhere
         a = a - bc
         b = b + 1
      endwhere

      where (e)
         d = bc + cd
      elsewhere
         d = bc - cd
      endwhere

      where (.not. e)
         a = a - b(c)
      elsewhere
         a = a + b(c)
      endwhere

      where (g)
         a(n-m+1:n) = bc(1:m) + cd(2:m+1)
      endwhere

      where (f)
         a = a + d
      elsewhere
         a = a - d
      endwhere

      end subroutine sub1

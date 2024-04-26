      program main
      integer *4 a(10)/10*0/,b(10)/10*0/,c(10)/10*0/,d(10)/10*0/
      integer,parameter::ANS=5
      logical *1 e(10)/10*.false./
      n = cos(0.0)*10
      m = cos(0.0)*5

      b = 0
      do l=1,n
         if (mod(l,2) .eq. 0) then
            e = .true.
            b(l) = 1
         endif
         c = mod(l,m)
         d = mod(l,n)
      end do

      call sub(n,m,a,b+c,c+d,e)
      call sub(n,m,a,b-c,c-d,e)

      if (sum(a) .eq. ANS) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif

      stop
      end

      subroutine sub(n,m,a,bc,cd,e)
      integer *4 n,m
      integer *4 a(1:n),bc(1:n),cd(1:n)
      logical *1 e(1:n)

      integer *4 b(1:n),c(1:n)

      b(1:n) = bc(1:n) - cd(1:n)
      where (e)
        a(1:n) = bc(1:n) + cd(1:m*2)
      elsewhere
        a(1:n) = bc(1:n) - cd(1:m*2)
      endwhere
      c(1:n) = bc(1:n) + cd(1:n)

      call sub_sub(n,a,b+c,b-c,e)
      end subroutine sub

      subroutine sub_sub(n,a,bc,cb,e)
      integer *4 n
      integer *4 a(1:n),bc(1:n),cb(1:n)
      logical *1 e(1:n)

      integer *4 b(1:n),c(1:n)
      logical *1 t(1:n),s(1:n)

      b = 0
      c = b
      s = (b > c)

      where (e)
        t = .not. e
      elsewhere
        t = .not. e
      endwhere

      where (t)
        b = bc * cb
        s = e .and. t
        c = bc + cb
      endwhere
      
      a(1:n/2) = a(3:n/2+2) + b(1:n/2) - c(5:n/2+4)

      where (e)
        a = a + (b - c)
      endwhere

      end subroutine sub_sub

      program main
      integer *4 a(30)/30*0/,b(30)/30*0/,c(30)/30*0/
      integer,parameter::ANS=1050
      n = cos(0.0)*30
      m = cos(0.0)*7

      do i=1,n
         a(i) = mod(i,6) + 1
         b(i) = mod(i,3) + 1
         c(i) = mod(i,2) + 1
      enddo

      i = 0
      j = 0
 300  i = i + 1
      loop2: do 20 while (j<=m)
         where (a>n)
            a = 1
         endwhere
         where (b>n)
            b = 1
         endwhere
         where (a < b)
            a = c(a)
         elsewhere
            b = c(b)
         endwhere

         loop1: do 10 while (i<=n)
            c(i:n) = a(i:n) + b(i:n)
            if (i<=n) then
               go to 200
            endif
            i = i + 1
            c(m:2*m-1) = c(1:m) - a(1:m) - b(1:m)
 10      end do loop1
 20   end do loop2

      if (j >= 7) then
         go to 400
      endif

 200  j = j + 1
      go to 300

 400  if (sum(c) .eq. ANS) then
         print *,"OK"
      else
         print *,sum(c)
         print *,"NG"
      endif

      stop
      end

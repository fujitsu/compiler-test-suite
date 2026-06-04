      module mod1
      integer*4 N
      parameter (N=10)
      integer*4, dimension(N+5),target :: tmp
      integer,parameter::ANS=-28104
      end module

      program main
      use mod1

      integer*4, dimension(1:N-2) :: a
      integer*4, dimension(1:N-2) :: b
      integer*4, dimension(1:N-2) :: c
      integer*4, dimension(1:N-2) :: d
      integer res
      integer*4, pointer :: e, f, g, h
      pointer (pt1, a)
      pointer (pt2, b)
      pointer (pt3, c)
      pointer (pt4, d)
      pt1 = loc(tmp(2))
      pt2 = loc(tmp(4))
      pt3 = loc(tmp(6))
      pt4 = loc(tmp(8))
      e => tmp(3)
      f => tmp(7)
      g => tmp(11)
      h => tmp(15)

      res = itreat1() + itreat2()

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      contains
      integer function itreat1()

      tmp = 1
      a = 2
      b = 3
      c = 4
      d = 5
      e = -10
      f = -1
      g = 1
      h = 10
      itreat1 = sum(tmp,1,tmp .gt. 1)

      end function

      integer function itreat2()
      integer i,j,k,l,m

      where (a .gt. 2*N)
         a = mod(a,N)
         b = a - c
         c = d - a
      endwhere

      do i=1,N
         do j=1,N
            do k=1,N
               do l=1,N
                  e = i*j - k*l
                  f = maxval(a,1,a .lt. 20)
                  g = maxval(b,1,b .lt. 20)
                  h = i*k - j*l
                  c = c + 1
                  e = e + 1
                  where (tmp .gt. 5*N)
                     tmp = mod(tmp,N)
                  endwhere
               enddo
               do m=1,N
                  where (d .gt. 5*N)
                     d = mod(d,N*2)
                     a = mod(a,N*2)
                  endwhere
                  a = a - 1
               enddo
               a = a + 1
               b = b - 1
               where (a .gt. 5*N)
                  a = mod(a,N*2)
                  c = mod(c,N*4)
               endwhere
            enddo
            tmp = tmp + 2 
         enddo
         d = d - 1
      enddo

      itreat2 = sum(tmp)

      end function

      end program

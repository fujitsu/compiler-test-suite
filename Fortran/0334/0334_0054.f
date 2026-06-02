
      module mod1
      integer*4 N
      parameter (N=10)
      integer*4, dimension(N+5),target :: tmp
      integer data1,data2,data3,data4,data5
      integer ans1,ans2,ans3,ans4,ans5
      parameter (ans1=52,ans2=141,ans3=144,ans4=106,ans5=-28281)

      contains
      subroutine print_judge(dt,as)
      integer dt, as
      if (dt .eq. as) then
         print *,"OK"
      else
         print *,"NG"
      endif      
      end subroutine
      end module

      module mod2
      integer*4,save :: idt
      end module

      program main
      use mod1
      use mod2

      integer*4, dimension(1:N-2) :: a
      integer*4, dimension(1:N-2) :: b
      integer*4, dimension(1:N-2) :: c
      integer*4, dimension(1:N-2) :: d
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

      call treat1()
      call treat2()
      call treat3(N)
      call treat4()
      call treat5()

      contains
      subroutine treat1()
      tmp = 1
      a = 2
      b = 3
      c = 4
      d = 5
      e = -10
      f = -1
      g = 1
      h = 10
      data1 = sum(tmp,1,tmp .gt. 1)

      call print_judge(data1, ans1)

      return
      end subroutine

      subroutine treat2()
      where ((a .le. 2).and.(b .le. 3).and.(c .le. 4).and.(d .le. 5))
         a = sum(b,1,b .le. 2)
         b = sum(c,1,c .le. 3)
         c = sum(d,1,d .le. 4)
         d = sum(a,1,a .le. 5)
      elsewhere
         a = maxval(b,1,b .le. 5)
         b = maxval(c,1,c .le. 4)
         c = maxval(d,1,d .le. 3)
         d = maxval(a,1,a .le. 2)
      endwhere

      do i=1, N+5
         tmp(i) = tmp(i) + N - i + 6
      enddo

      data2 = sum(tmp,1,tmp .gt. 1)

      call print_judge(data2,ans2)

      return
      end subroutine

      recursive subroutine treat3(n)
      integer*4 n
         if (n .eq. 0) then
            data3 = sum(tmp,1,tmp .le. 20)
            call print_judge(data3,ans3)
            return
         endif
         where (tmp .le. (maxval(tmp)))
            tmp = tmp + 1
         elsewhere
            tmp = tmp + maxval(tmp)
         endwhere

         call treat3(n-1)
      end subroutine

      subroutine treat4()
      interface
      integer function out_t4sub(g,mmmm)
      use mod2
      integer*4 :: g
      integer*4, dimension(g),target :: mmmm
      integer N
      parameter (N=15)
      integer*4, dimension(N),target :: tmp
      end function 
      end interface

      idt = 1
      do i=1, 3
         if (out_t4sub(N,tmp) < out_t4sub(N,tmp)) then
            idt = idt + 1
         else
            if (out_t4sub(N,tmp)*out_t4sub(N,tmp)<out_t4sub(N,tmp))then
               idt = idt + 1
            else
               idt = idt - 1
            endif
         endif
      enddo

      data4 = idt
      call print_judge(data4,ans4)

      end subroutine

      subroutine treat5()
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

      data5 = sum(tmp)
      call print_judge(data5,ans5)

      end subroutine

      end program
      
      integer function out_t4sub(g,mmmm)
      use mod2
      integer*4 :: g
      integer*4, dimension(g),target :: mmmm
      integer N
      parameter (N=15)
      integer*4, dimension(N),target :: tmp


      tmp = 1
      where (mmmm .gt. 20)
         tmp = tmp + 1
      elsewhere
         tmp = tmp - 1
      endwhere

      idt = idt + sum(tmp)

      out_t4sub = idt
      return
      end function


      module p_sub
      contains
      subroutine sub_p(atai)
      integer atai,ans
      parameter (ans=6)
      call diff_check(atai,ans)
      end subroutine sub_p

      subroutine diff_check(atai,ans)
      integer atai,ans
      if (atai.eq.ans) then
         print *,'OK --- ',atai
      else
         print *,'NG --- ',atai,'/ answer = ',ans
      endif
      end subroutine diff_check
      end module p_sub

      module mod
      use p_sub
      integer,save :: atai

      contains
      recursive subroutine mod_sub
      atai = 0
      entry mod_sub_sub
      atai = atai + 1
      if (atai<6) then
         call mod_sub2
      else
         call sub_p(atai)
         return
      endif
      end subroutine mod_sub

      recursive subroutine mod_sub2
      call mod_sub_sub2
      contains
      recursive subroutine mod_sub_sub2
      atai = atai + 1
      if (atai>2) then
         call mod_sub_sub
      else
         call mod_sub_sub2
      endif
      end subroutine mod_sub_sub2
      end subroutine mod_sub2

      end module mod

      module mod2
      integer N
      parameter (N=30)
      end module mod2

      module mod3
      use mod2
      integer,dimension(N) :: array
      end module mod3

      program main
      use mod
      use mod3

      interface
      subroutine osub1(array,dat)
      integer,optional,dimension(10) :: array
      integer :: dat
      end subroutine osub1
      end interface

      integer irec_func
      integer sum
      real r1, r2, r3
      real, allocatable :: ans(:)
      real res

      call mod_sub
      sum = atai

      call init_array
      call osub1(array,dat=atai)
      sum = sum + atai
      call osub1(dat=atai)
      sum = sum + atai

      sum = sum + irec_func(sum)
      call sub_p(sum/4)


      r1 = real(sum/sum)
      r2 = real(sum-34)
      r3 = real(sum)

      call sol

      res = 0.0
      if (ubound(ans,1).ne.1) then
         m_loop: do i=lbound(ans,1),ubound(ans,1)-1
         res = amax1(res, amax1(ans(i),ans(i+1)))
         end do m_loop
      else
         res = ans(1)
      endif

      call sub_p(int(res))

      contains
      subroutine sol
      real dummy

      dummy = sqrt(r2**2 - 4 * r1 * r3)
      if (dummy .eq. 0.0) then
         allocate(ans(1))
         ans(1) = (-1 * r2) / (2 * r1)
      else
         allocate(ans(2))
         ans(1) = (-1 * r2 + dummy) / (2 * r1)
         ans(2) = (-1 * r2 - dummy) / (2 * r1)
      endif

      end subroutine sol

      end program main

      subroutine init_array
      use mod3
      do 50 i=1,N
         if (mod(i,2).eq.0) then
            array(i)=0
         else
            array(i)=1
         endif
 50   continue
      end subroutine init_array

      subroutine osub1(hary,a)
      use mod2
      integer,optional,dimension(10) :: hary
      integer :: a
      if (present(hary)) then
         loop1: do i=1,10
            a = a + hary(i)
         end do loop1
      endif
      if (.not.present(hary)) then
         a = 10
      endif
      end subroutine osub1

      recursive integer function irec_func(sum) result(res)
      integer :: sum
      if (sum>0) then
         res = irec_func(sum-5)
      else
         res = sum
      endif
      end function irec_func

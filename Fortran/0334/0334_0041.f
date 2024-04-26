

      module mod
      contains
      subroutine mod_sub1
      integer wa
      common wa

      print *,'sum = ',wa
      end subroutine mod_sub1


      subroutine mod_sub2(dat)
      integer dat
      integer wa
      common wa
      integer ans(3)
      common /ans_com/ans

      call mod_sub2_sub(wa.eq.ans(dat),ans(dat))

      contains
      subroutine mod_sub2_sub(jug,rlt)
      logical*4 jug
      integer   rlt

      if (jug) then
         print *,'answer = ',rlt
         print *,'----- ok -----'
      else
         print *,'answer = ',rlt
         print *,'----- ng -----'
      endif

      end subroutine mod_sub2_sub
      end subroutine mod_sub2

      end module mod

      program main
      use mod
      integer N
      parameter (N=30)
      integer wa, inum(N), ans(3)
      common  wa, /ans_com/ans

      call init_inum

      call sub1(inum,N)
      call mod_sub1
      call mod_sub2(1)

      call sub2(inum,N)
      call mod_sub1
      call mod_sub2(2)

      call sub3(inum,N)
      call mod_sub1
      call mod_sub2(3)

      call sub4(inum,N)
      call mod_sub1
      call mod_sub2(3)

      call init_inum

      call insub1
      call insub2

      contains
      subroutine init_inum
      loop1: do 10 i=1,N
         inum(i) = i
 10   end do loop1
      end subroutine init_inum

      subroutine insub1
      call sub1(inum,N)
      call mod_sub1
      call mod_sub2(1)
      end subroutine insub1

      subroutine insub2
      call sub2(inum,N)
      call mod_sub1
      call mod_sub2(2)
      end subroutine insub2

      end program main

      subroutine sub4(inum,N)
      integer N
      integer inum(N)
      integer wa
      common wa

      entry sub3(inum,N)
      sub3_loop: do 100 i=1,N
         inum(i) = inum(i)**(1/4)
 100  end do sub3_loop

      entry sub2(inum,N)
      sub2_loop: do 110 i=1,N
         inum(i) = inum(i)**2
 110  end do sub2_loop

      entry sub1(inum,N)
      wa = 0
      sub1_loop: do 120 i=1,N
         wa = wa + inum(i)
 120  end do sub1_loop

      call sub_sub1(wa)
      return

      contains

      subroutine sub_sub1(atai)
      integer atai
      print *,'atai = ',atai
      end subroutine sub_sub1
      end subroutine sub4

      block data
      integer ans(3)
      common /ans_com/ans
      data ans/465,9455,30/
      end


      module mod1
      type mod1_calculate
      sequence
      integer data1
      integer data2
      integer data3
      integer data4
      integer data5
      end type mod1_calculate
      type(mod1_calculate) :: mod1_ccc
      common /mod1_com/mod1_ccc
      integer INIT, REPA
      parameter (INIT=0)
      parameter (REPA=1)

      contains
      subroutine mod1_sort
      integer p1,p2,p3,p4,p5
      common /mod1_com/p1,p2,p3,p4,p5
      integer array(5), dummy

      call mod1_sort_sub1(array,INIT)

      mod1_sort_loop1: do 10 j=4,1,-1
         mod1_sort_loop2: do 20 i=1,j
            if (array(i)<array(i+1)) then
               dummy = array(i)
               array(i) = array(i+1)
               array(i+1) = dummy
            endif
 20      end do mod1_sort_loop2
 10   end do mod1_sort_loop1

      call mod1_sort_sub1(array,REPA)

      contains
      subroutine mod1_sort_sub1(array,judge)
      integer array(5)
      integer judge
      integer g1,g2,g3,g4,g5
      common /mod1_com/g1,g2,g3,g4,g5

      if (judge == INIT) then
         array(1) = g1
         array(2) = g2
         array(3) = g3
         array(4) = g4
         array(5) = g5
      else
         if (judge == REPA) then
            g1 = array(1)
            g2 = array(2)
            g3 = array(3)
            g4 = array(4)
            g5 = array(5)
         endif
      endif

      end subroutine mod1_sort_sub1

      end subroutine mod1_sort

      subroutine mod1_print_calc
      integer c1,c2,c3,c4,c5
      common /mod1_com/c1,c2,c3,c4,c5

      print *,c1,c2,c3,c4,c5

      end subroutine mod1_print_calc
     
      end module mod1

      module mod2
      integer g1,g2,g3,g4,g5
      common /mod1_com/g1,g2,g3,g4,g5
      integer mod2_check
      integer mod1_ans

      contains
      subroutine mod2_check_mod1
      integer sum

      sum = g1+g2+g3+g4+g5
      if (sum.eq.mod1_ans) then
         mod2_check = 1
      else
         mod2_check = 0
      endif

      end subroutine mod2_check_mod1

      end module mod2

      program main
      use mod1
      use mod2
      type main_calculate
      sequence
      integer data1
      integer data2
      integer data3
      integer data4
      integer data5
      end type main_calculate
      type(main_calculate) :: main_ccc
      common /main_com/main_ccc
      integer out_sub_check_ans1
      integer sum1, sum2
      pointer (ptr1, kei1)
      pointer (ptr2, kei2)

      ptr1 = loc(sum1)
      ptr2 = loc(sum2)
      mod1_ans = 150

      call mod1_print_calc
      call mod1_sort
      call mod1_print_calc
      call mod2_check_mod1
      call out_sub_print(mod2_check)
      
      call main_print_calc
      call main_sum_calc(kei1,kei2)
      call out_sub_print(out_sub_check_ans1(sum1,sum2))

      contains
      subroutine main_print_calc
      integer s1,s2,s3,s4,s5
      common /main_com/s1,s2,s3,s4,s5

      print *,s1,s2,s3,s4,s5
            
      end subroutine main_print_calc

      subroutine main_sum_calc(kei1,kei2)
      integer kei1,kei2
      integer s1,s2,s3,s4,s5
      common /main_com/s1,s2,s3,s4,s5
      integer g1,g2,g3,g4,g5
      common /mod1_com/g1,g2,g3,g4,g5

      kei1 = s1+s2+s3+s4+s5
      kei2 = g1+g2+g3+g4+g5

      call main_print_sum(kei1,kei2)

      end subroutine main_sum_calc

      subroutine main_print_sum(kei1,kei2)
      integer kei1,kei2

      print *,kei1,kei2

      end subroutine main_print_sum

      end program main

      subroutine out_sub_print(ok_ng)
      integer ok_ng
      if (ok_ng.eq.0) then
         call sub_sub_prt_ng
      else
         call sub_sub_prt_ok
      endif

      contains
      subroutine sub_sub_prt_ok
         print *,'----- ok -----'
      end subroutine sub_sub_prt_ok
      subroutine sub_sub_prt_ng
         print *,'----- ng -----'
      end subroutine sub_sub_prt_ng
      end subroutine out_sub_print

      integer function out_sub_check_ans1(sum1,sum2)
      integer sum1,sum2
      integer ans1,ans2
      parameter (ans1=15,ans2=150)
      integer lgc

      if ((sum1.eq.ans1).and.(sum2.eq.ans2)) then
         lgc = 1
      else
         lgc = 0
      endif

      out_sub_check_ans1 = lgc
      return
      end function out_sub_check_ans1

      block data
      integer d1,d2,d3,d4,d5
      integer e1,e2,e3,e4,e5
      common /main_com/d1,d2,d3,d4,d5
      common /mod1_com/e1,e2,e3,e4,e5

      data d1/1/,d2/2/,d3/3/,d4/4/,d5/5/
      data e1/10/,e2/20/,e3/30/,e4/40/,e5/50/

      end


      module mod1
      implicit none
      integer sum1
      integer,allocatable :: array1(:)
      end module mod1

      module mod2
      implicit none
      integer sum2
      integer,allocatable :: array2(:)
      end module mod2

      module mod
      use mod1
      use mod2
      integer N
      parameter (N=3)
      integer TEN
      parameter (TEN=10)
      contains
      subroutine sub
      sum1 = 0
      sum2 = 0
      entry sub_ent
      if (allocated(array1)) then
         sum1 = sum1 + 1
      else
         allocate(array1(TEN))
         array1 = 0
      endif

      if (allocated(array2)) then
         sum2 = sum2 + 1
         if (allocated(array1)) then
            array2 = array2 + array1 + 1
         else
            array2 = 1
         endif
      else
         allocate(array2(TEN))
         array2 = 0
      endif
      end subroutine sub

      end module mod

      module rec
      use mod
      contains
      recursive subroutine fnc1(count)
      integer count
      integer sum1,sum2
      sum1 = TEN
      sum2 = TEN
      if (count>=TEN) then
         return
      else
         call sub
         if ((sum1.eq.1).or.(sum2.eq.1)) then
            print *,'NG (in fnc1)'
         endif
         call fnc1(count+1)
      endif
      end subroutine fnc1

      recursive subroutine fnc2(count)
      integer count
      call fnc3(count-1)
      contains
      recursive subroutine fnc3(count)
      integer count
      if (count>=TEN) then
         return
      else
         call fnc1(TEN-1)
         call sub
         call fnc2(count+2)
      endif
      end subroutine fnc3
      end subroutine fnc2

      end module rec

      program main
      use rec
      integer total1(TEN)
      integer total2(TEN)
      integer ans1
      parameter (ans1=0)
      pointer (ptr1,total1)
      pointer (ptr2,total2)
      integer tsum
      integer atai11,atai12
      pointer (pot11,atai11)
      pointer (pot12,atai12)
      integer atai21,atai22
      pointer (pot21,atai21)
      pointer (pot22,atai22)
      integer ans

      pot11 = loc(sum1)
      pot12 = loc(atai11)

      pot21 = loc(sum2)
      pot22 = loc(atai21)

      call sub

      ptr1=loc(array1(1))
      ptr2=loc(array1(1))

      loop1: do 10 i=1, N
      call sub_ent
 10   end do loop1

      tsum = 0
      loop2: do 20 i=1, sum1+sum2
      total2(i)=total2(i)+array2(i)
      total1(i)=total1(i)+total2(i)
      tsum = tsum + (total1(i)-total2(i))
 20   end do loop2

      if (tsum.eq.ans1) then
         print *,'OK --- ',tsum
      else
         print *,'NG --- ',tsum
      endif


      call fnc1(1)
      call fnc2(2)

      if ((sum1.eq.1).and.(sum2.eq.1)) then
         print *,'OK --- ',sum1,',',sum2
      else
         print *,'NG --- ',sum1,',',sum2
      endif


      loop3: do 30 i=1,TEN
      atai12 = atai12 + sum1
      atai22 = atai22 + sum2
 30   end do loop3

      ans = atai12 + atai22

      if (ans.eq.2048) then
         print *,'OK --- ',ans
      else
         print *,'NG --- ',atai12,',',atai22
      endif

      end program main


      program main

      type numeric
         sequence
         integer x
         integer y
      end type numeric
      type(numeric) :: num

      type char
         sequence
         character    x
         character*10 y
      end type char
      type(char) :: chr

      type mix
         sequence
         integer   a
         character b
      end type
      type(mix) :: mx

      common /com1/num
      character*10 string
      common /com2/chr,string
      common /com3/mx
      integer ans1,ans2,ans5
      character*10 ans3,ans4
      character ans6
      data ans1/-121/,ans2/176/,ans5/57/
      data ans3/'PPPPPPFORT'/,
     +ans4/'ppppppPPPP'/
      data ans6/'P'/

      integer i
      integer N
      parameter (N=10)
      integer array(1:N)
      character*10 strs
      data strs/'ppppppspec'/
      type(mix) :: ref
      pointer (ptr, ref)
      ptr = loc(mx)

      array = 0
      array(1) = 1
      array(2) = 2
      loop0: do 10 i=3,N
        array(i) = array(i-1) + array(i-2)
 10   end do loop0

      num%x = 0
      num%y = N
      loop1: do 20 i=1,N
        num%x = num%x + array(i)
        num%y = num%y - array(i)
 20   end do loop1

      call sub1(num%x + num%y, N)

      if (num%x.eq.ans1) then
         print *,'OK --- num%x = ',num%x
      else
         print *,'NG --- num%x = ',num%x
      endif

      if (num%y.eq.ans2) then
         print *,'OK --- num%y = ',num%y
      else
         print *,'NG --- num%y = ',num%y
      endif



      if (isub2().ne.0) then
         string = strs(1:6)//chr%y(1:4)
      endif

      if (chr%y.eq.ans3) then
         print *,'OK --- chr%y = ',chr%y
      else
         print *,'NG --- chr%y = ',chr%y
      endif

      if (string.eq.ans4) then
         print *,'OK --- string = ',string
      else
         print *,'NG --- string = ',string
      endif



      ref%a = isub2()
      ref%b = 'T'

      chr%y = ref%b//chr%y(2:10)
      mx%a = ref%a + isub2()

      if (mx%a > 1) then
         call sub3(ref%b)
      endif

      if (mx%a.eq.ans5) then
         print *,'OK --- mx%a = ',mx%a
      else
         print *,'NG --- mx%a = ',mx%a
      endif

      if (mx%b.eq.ans6) then
         print *,'OK --- mx%b = ',mx%b
      else
         print *,'NG --- mx%b = ',mx%b
      endif

      end program main

      subroutine sub1(arg, N)
      integer arg, N
      integer i,j,k
      common /com1/j,k

      sub1_loop1: do 100 i=1,N
         j = j - i
         k = k + arg
 100  end do sub1_loop1

      call sub1_swap()

      end subroutine sub1

      subroutine sub1_swap()
      integer p,q
      common /com1/p,q
      integer dumy

      dumy = p
      p = q
      q = dumy

      end subroutine sub1_swap

      integer function isub2()
      character    s1
      character*10 s2
      character*10 s3
      common /com2/s1,s2,s3
      integer result

      result = 0
      isub2_loop1: do 300 i=1,10
         if (s1.eq.s2(i:i)) then
            s2(i:i) = s3(i:i)
            result = 1
         endif
 300  end do isub2_loop1

      isub2 = result

      end function isub2
      
      subroutine sub3(ch)
      character ch
      integer   k1
      character k2
      common /com3/k1,k2
      integer   i

      if (k2 == ch) then
         i = 1
         do 400 while (i<=10)
            k1 = k1 + i            
            i=i+1
 400     continue
      else
         k1 = 0
      endif

      if (MOD(k1,3).eq.0)then
         k2 = 'P'
      endif

      end subroutine sub3
      block data
      character    s1
      character*10 s2
      character*10 s3
      common /com2/s1,s2,s3

      data s1/'T'/,s2/'PPPPPPFORT'/,s3/'CCCPPPPPPT'/

      end

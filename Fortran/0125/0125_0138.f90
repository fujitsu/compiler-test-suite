      integer(8) loop_num
      parameter (loop_num=1000)
      integer(8) Master
      parameter (Master=6420)

      TYPE st
        real*8 :: a
        real*8 :: b
      END TYPE st

      TYPE(st) :: st1(loop_num),st2(loop_num)
      TYPE(st) :: st3(loop_num),st4(loop_num)

      integer c(loop_num)
      integer i,result

      do i=1,loop_num
        st1(i)%a = 1.0
        st1(i)%b = 2.0
        st2(i)%a = 1.0
        st2(i)%b = 2.0
        st3(i)%a = 1.0
        st3(i)%b = 2.0
        st4(i)%a = 1.0
        st4(i)%b = 2.0
        c(i) = i
      end do
      call sub(st1,st2,st3,st4,c,loop_num,10)

      result = 0.0;

      do i=1,loop_num
        result =  st1(i)%a + st2(i)%a + st3(i)%a + st4(i)%a + result
      end do

      if (result == Master) then
        write(*,*) "ok"
      else
        write(*,*) "ng sub ",result
      end if
      end

      subroutine sub(st1,st2,st3,st4,c,n,k)
        type st
           real*8 :: a
           real*8 :: b
        END TYPE st
        integer(8) n
        integer i,c(n),k
        type(st),intent(inout) :: st1(n),st2(n),st3(n),st4(n)

        do i=1,n
           st1(i)%a = st1(i)%a + st1(i)%b
        end do
        do i=1,n,100
           st2(i)%a = st2(i)%a + st2(i)%b
        end do
        do i=1,n,k
           st3(i)%a = st3(i)%a + st3(i)%b
        end do
        do i=1,n,k
           st4(c(i))%a = st4(c(i))%a + st4(c(i))%b
        end do
      end subroutine sub

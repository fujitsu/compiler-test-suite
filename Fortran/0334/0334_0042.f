
      module mod1
        integer sum,N
        common /com/sum
        parameter (N=10)

        contains
        recursive subroutine sub1
          call sub11
          contains
          recursive subroutine sub11
            call sub2
          end subroutine sub11
        end subroutine sub1

        recursive subroutine sub2
          call sub21
          contains
          recursive subroutine sub21
            call sub3
          end subroutine sub21
        end subroutine sub2

        recursive subroutine sub3
          call sub31
          contains
          recursive subroutine sub31
            sum = sum + 1
            if (mod(sum,N)==0) then
               return
            else
               call sub1
            endif
          end subroutine sub31
        end subroutine sub3
      end module mod1

      program main
        use mod1

        call sub1
        call check_ans
        call insub1
        call check_ans2
        call outsub1
        call check_ans2
        call insub4
        call check_ans2
        call outsub4
        call check_ans2

        contains
        recursive subroutine insub1
          call insub2
        end subroutine insub1

        recursive subroutine insub2
          call insub3
        end subroutine insub2

        recursive subroutine insub3
          integer sum,N
          common  /com/sum
          parameter (N=20)
          if (mod(sum,N)==0) then
             return
          else
             sum = sum + 1
             call insub1
          endif
        end subroutine insub3

        subroutine insub4
          call insub5
        end subroutine insub4

        subroutine insub5
          call sub1
        end subroutine insub5

      end program main

      recursive subroutine outsub1
        call outsub2
      end subroutine outsub1

      recursive subroutine outsub2
        call outsub3
      end subroutine outsub2

      recursive subroutine outsub3
        integer sum, N
        common  /com/sum
        parameter (N=30)
        if (mod(sum,N)==0) then
           return
        else
           sum = sum + 1
           call outsub1
        endif
      end subroutine outsub3

      subroutine outsub4
        call outsub5
      end subroutine outsub4

      subroutine outsub5
        use mod1
        call sub1
      end subroutine outsub5

      subroutine check_ans
        integer sum, ans(5)
        common  /com/sum/acom/ans
        integer :: count = 0

        entry check_ans2
        count = count + 1
        if (ans(count)==sum) then
           print *,'OK --- sum = ',sum
        else
           print *,'NG --- sum = ',sum
           print *,'answer = ',ans(count)
        endif
      end subroutine check_ans

      block data
      integer sum, ans(5)
      common  /com/sum/acom/ans

      data sum/0/
      data ans/10,20,30,40,50/
      end

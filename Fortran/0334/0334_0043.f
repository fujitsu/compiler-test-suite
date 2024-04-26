
      module mod1
        integer sum,N
        common /com/sum
        parameter (N=10)
        integer m_local

        contains
        subroutine sub1
          m_local = 1
          call sub_print(m_local,1)
          call sub11
          contains
          subroutine sub11
            integer m_local
            m_local = 10
            call sub_print(m_local,10)
            call sub2
          end subroutine sub11
        end subroutine sub1

        subroutine sub2
          integer sum
          m_local = m_local + 1
          call sub_print(m_local,2)
          call sub21
          contains
          subroutine sub21
            sum = 2
            m_local = sum
            call sub_print(m_local,2)
            call sub3
          end subroutine sub21
        end subroutine sub2

        subroutine sub3
          integer m_local
          if (sum.eq.2) then
             print *,'NG -> Quit'
             stop
          endif
          call sub31
          contains
          recursive subroutine sub31
            sum = sum + 1
            if (mod(sum,N)==0) then
               m_local = 5
               call sub_print(m_local,5)
               return
            else
               call sub31
            endif
          end subroutine sub31
        end subroutine sub3

        subroutine sub_print(atai,ans)
          integer atai,ans
          if (atai.eq.ans) then
             print *,'OK --- atai = ',atai
          else
             print *,'NG --- atai = ',atai
             print *,'answer = ',ans
          endif
        end subroutine sub_print
      end module mod1

      program main
        use mod1
        integer local_var

        call sub1
        call check_ans
        local_var = 1
        call sub_print(m_local,2)
        m_local = m_local + 2
        call sub_print(m_local,4)
        call insub1
        call check_ans2
        call outsub1
        call check_ans2
        call outsub2
        call check_ans2

        contains
        subroutine insub1
          local_var = local_var + 1
          m_local = m_local + 1
          call sub_print(m_local,5)
          call sub_print(local_var,2)
          call insub2
        end subroutine insub1

        subroutine insub2
          integer local_var
          integer m_local
          m_local = sum
          local_var = sum
          call sub_print(m_local,sum)
          call sub_print(local_var,sum)
          call insub3
        end subroutine insub2

        recursive subroutine insub3
          integer sum,N
          common  /com/sum
          parameter (N=20)
          if (mod(sum,N)==0) then
             local_var = local_var + 1
             m_local = m_local + 2
             call sub_print(m_local,7)
             call sub_print(local_var,3)
             return
          else
             sum = sum + 1
             call insub3
          endif
        end subroutine insub3

      end program main

      subroutine outsub1
        use mod1
        m_local = 3
        call sub_print(m_local,3)
        call sub1
        m_local = m_local + 1
        call sub_print(m_local,3)
      end subroutine outsub1

      subroutine outsub2
        use mod1
        integer out_pt
        pointer (ptr,out_pt)
        ptr = loc(m_local)

        out_pt = 17
        call sub_print(m_local,17)
        call sub1
        out_pt = out_pt + 1
        call sub_print(m_local,3)
      end subroutine outsub2

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

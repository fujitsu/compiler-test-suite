
      recursive subroutine sub1(i)
        integer j(1)
        integer judge(1)
        j=i*2
        call sub2()
        return
        contains
        subroutine sub2()
          where (j .eq. 20)
             judge = 1
          elsewhere
             judge = 0
          endwhere
          if (judge(1).eq.1) then
            print *,"OK"
          else
            print *,"NG"
          endif
        end subroutine sub2
      end subroutine sub1

      program main
      call sub1(10)
      stop
      end  


      module mod

      contains
        recursive subroutine subt13(n)
        n=n-1
        m=n
        if (n.eq.0) return

        call subt13(n)

        i = ifun(m)
        jj = 1
        do j=1,m
          jj = jj*j
        enddo
        if (i.ne.jj) then
          print *,'??? ng ???'
          stop 1
        endif

        i = ifun2(m)
        jj = 1
        do j=1,m
          jj = jj*j
        enddo
        if (i.ne.jj) then
          print *,'??? ng ???'
          stop 2
        endif

        contains
          recursive function ifun(k) result(iresult)
          if (k.eq.0) then
            iresult=1
            return
          else
            iresult=k*ifun(k-1)
          endif
          end function ifun
          recursive function ifun2(k) result(iresult)
          if (k.eq.0) then
            iresult=1
            return
          else
            iresult=k*ifun2(k-1)
          endif
          end function ifun2
        end subroutine subt13 
      end

      use mod
      n=10
      call subt13(n)
      print *,'*** ok ***'
      end

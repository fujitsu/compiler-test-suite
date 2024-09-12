      recursive subroutine sub1(i)

      call sub1in(i)

      if (i == 10000) then
        return
      end if

      call sub2(i)

      contains
        subroutine sub1in(i)
        i = i + 1
        end subroutine
      end subroutine
      recursive subroutine sub2(j)

      call sub2in(j)

      if (j == 10000) then
        return
      end if

      call sub1(j)

      contains
        subroutine sub2in(j)
        j = j + 1
        end subroutine
      end subroutine
      int = 1
      call sub1(int)
      print *,int
      end

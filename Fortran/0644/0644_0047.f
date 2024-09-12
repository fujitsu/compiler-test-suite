      recursive subroutine sub1(i)
      i = i + 1
      if (i == 10000) then
        return
      end if

      call sub2(i)

      end subroutine
      recursive subroutine sub2(j)
      j = j + 1
      if (j == 10000) then
        return
      end if

      call sub1(j)

      end subroutine
      int = 1
      call sub1(int)
      print *,int
      end

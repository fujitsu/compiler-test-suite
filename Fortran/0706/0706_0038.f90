      call s1
      print *,'pass'
      end
      subroutine s1
      character*13 y2(1)
      character*4  ::a1='1234'
      call ss1(y2,a1)
      contains
      subroutine ss1(y2,a1)
      character(*) y2(:)
      character(*) ::a1
      y2=adjustl(a1//a1)
      write(1,*)y2
      end subroutine ss1
      end

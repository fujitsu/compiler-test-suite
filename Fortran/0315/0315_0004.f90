      program main
      interface
        subroutine sub1(a)
        integer(kind=4),dimension(:)::a
        end subroutine
      end interface
      integer (kind=4),dimension(10)::i04a
      character(len=4),dimension(10)::ch4a
      call sub1(i04a)
      call sub2(ch4a)
      stop
      end

      subroutine sub1(a)
      integer(kind=4)::a
      a=1
      print *,'###      OK-1      ###'
      end subroutine

      subroutine sub2(a)
      integer(kind=4)::a
      a=2
      print *,'###      OK-2      ###'
      end subroutine

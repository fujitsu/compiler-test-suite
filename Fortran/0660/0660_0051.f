      call ss1()
      call ss2()
      print *,' *** pass ***'
      end
      subroutine ss1()
      integer(kind=4)  c,r,m
      call system_clock(count=c,count_rate=r,count_max=m)
      end
      subroutine ss2
      integer(kind=4) co,ra,ma
      type aa
        sequence
        integer(kind=4) co,ra,ma
      end type
      interface check
        subroutine sub_chk1(co,ra,ma)
        integer(kind=4),intent(out) :: co,ra,ma
        end subroutine
        subroutine sub_chk2(str)
        type aa
          sequence
          integer(kind=4) co,ra,ma
        end type
        type(aa),intent(inout) :: str
        end subroutine
      end interface
      type (aa) :: str
      call check(co,ra,ma)
      call check(str)
      call system_clock(co,ra,ma)
      call system_clock(co,count_max=ma,count_rate=ra)
      call system_clock(count=co,count_max=ma,count_rate=ra)
      call system_clock(count_max=ma,count=co,count_rate=ra)
      call system_clock(count_rate=str%ra,count_max=str%ma,count=str%co)
      end
      subroutine sub_chk1(co,ra,ma)
      integer(kind=4),intent(out) :: co,ra,ma
      call system_clock(co,ra,ma)
      call system_clock(co,count_max=ma,count_rate=ra)
      call system_clock(count=co,count_max=ma,count_rate=ra)
      call system_clock(count_max=ma,count=co,count_rate=ra)
      end
      subroutine sub_chk2(str)
      type aa
        sequence
        integer(kind=4) co,ra,ma
      end type
      type(aa),intent(inout) :: str
      call system_clock(str%co,count_max=str%ma,count_rate=str%ra)
      call system_clock(str%co,count_rate=str%ra,count_max=str%ma)
      call system_clock(count_rate=str%ra,count_max=str%ma,count=str%co)
      end

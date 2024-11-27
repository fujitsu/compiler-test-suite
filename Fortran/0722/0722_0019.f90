!$pragma c(aaa)
external :: aaa
external :: bbb !$pragma c(bbb)
!$pragma c(ccc)
real,external :: ccc
real,external :: ddd !$pragma c(ddd)
!$pragma c(eee)
external :: eee
real     :: eee
!$pragma c(fff)
real     :: fff
external :: fff
end

subroutine sub
!$pragma c(aaa)
external :: aaa
pointer  :: aaa
external :: bbb
pointer  :: bbb !$pragma c(bbb)
!$pragma c(ccc)
real,external,pointer :: ccc
real,external,pointer :: ddd !$pragma c(ddd)
end

subroutine sub1
!$pragma c(aaa)
pointer  :: aaa
external :: aaa
pointer  :: bbb
external :: bbb !$pragma c(bbb)
!$pragma c(ccc)
real,external:: ccc
pointer :: ccc
real,external:: ddd !$pragma c(ddd)
pointer :: ddd
!$pragma c(eee)
pointer :: eee
real,external:: eee
pointer :: fff
real,external:: fff !$pragma c(fff)
end

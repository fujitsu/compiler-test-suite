call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod03
interface aaa
 module procedure mod03sub
end interface
contains
subroutine mod03sub()
 common /com03/ ia(10),ib(10),ic(10)
 equivalence(ia(7),i7)
 equivalence(ib(1),j1)
 equivalence(ii(1),i7)
 equivalence(ii(5),j1)
 integer ii(10)
 ia=(/(i,i=1,10)/)
 ib=(/(i,i=11,20)/)
 ic=(/(i,i=21,30)/)
 if (.not.any(ia.eq.(/(i,i=1,10)/))) write(6,*) "NG"
 if (.not.any(ib.eq.(/(i,i=11,20)/))) write(6,*) "NG"
 if (.not.any(ic.eq.(/(i,i=21,30)/))) write(6,*) "NG"
end subroutine
end module

subroutine sub03()
use mod03
 common /com03/ ia(10),ib(10),ic(10)
call mod03sub()
 if (.not.any(ia.eq.(/(i,i=1,10)/))) write(6,*) "NG"
 if (.not.any(ib.eq.(/(i,i=11,20)/))) write(6,*) "NG"
 if (.not.any(ic.eq.(/(i,i=21,30)/))) write(6,*) "NG"
end

module mod01
interface aaa
 module procedure mod01sub
end interface
contains
subroutine mod01sub()
 common /com01/ ia(10),ib(10),ic(10)
 ia=(/(i,i=1,10)/)
 ib=(/(i,i=11,20)/)
 ic=(/(i,i=21,30)/)
 if (.not.any(ia.eq.(/(i,i=1,10)/))) write(6,*) "NG"
 if (.not.any(ib.eq.(/(i,i=11,20)/))) write(6,*) "NG"
 if (.not.any(ic.eq.(/(i,i=21,30)/))) write(6,*) "NG"
end subroutine
end module

subroutine sub01()
use mod01
 common /com01/ ia(10),ib(10),ic(10)
call mod01sub()
 if (.not.any(ia.eq.(/(i,i=1,10)/))) write(6,*) "NG"
 if (.not.any(ib.eq.(/(i,i=11,20)/))) write(6,*) "NG"
 if (.not.any(ic.eq.(/(i,i=21,30)/))) write(6,*) "NG"
end

module mod02
interface aaa
 module procedure mod02sub
end interface
contains
subroutine mod02sub()
 integer ie(30)
 common /com02/ ia(10),ib(10),ic(10)
 equivalence(ie(1),ia(1))
 equivalence(ie(11),ib(1))
 equivalence(ie(21),ic(1))
 ia=(/(i,i=1,10)/)
 ib=(/(i,i=11,20)/)
 ic=(/(i,i=21,30)/)
 if (.not.any(ia.eq.(/(i,i=1,10)/))) write(6,*) "NG"
 if (.not.any(ib.eq.(/(i,i=11,20)/))) write(6,*) "NG"
 if (.not.any(ic.eq.(/(i,i=21,30)/))) write(6,*) "NG"
 if (.not.any(ie.eq.(/(i,i=1,30)/))) write(6,*) "NG"
end subroutine
end module

subroutine sub02()
use mod02
 common /com02/ ia(10),ib(10),ic(10)
call mod02sub()
 if (.not.any(ia.eq.(/(i,i=1,10)/))) write(6,*) "NG"
 if (.not.any(ib.eq.(/(i,i=11,20)/))) write(6,*) "NG"
 if (.not.any(ic.eq.(/(i,i=21,30)/))) write(6,*) "NG"
end

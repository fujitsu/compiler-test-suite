call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod
integer ia(9),ja(3),ka(3),pa(3)
data ja/1,2,3/
data ka/4,5,6/
data pa/7,8,9/
end
module mod01
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mod,ija=>ja
use mod,ika=>ka
use mod,ipa=>pa
use mod,iia=>ia
iia(1:3) =ija
iia(4:6) =ika
iia(7:9) =ipa
do i=1,9
 if (iia(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub01()
use mod01
call sub()
end

module mod002
integer ia(9),ja(3),ka(3),pa(3)
end
module mod02
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mod002,ija=>ja
use mod002,ika=>ka
use mod002,ipa=>pa
use mod002,iia=>ia
 ija=(/1,2,3/)
 ika=(/4,5,6/)
 ipa=(/7,8,9/)
iia(1:3) =ija
iia(4:6) =ika
iia(7:9) =ipa
do i=1,9
 if (iia(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub02()
use mod02
call sub()
end

module mod003
integer ia(9),ii,ja(3),jj,ka(3),pa(3)
common /com03/ ja,ka,pa
private ii,jj
end
module mod03
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mod003,ija=>ja
use mod003,ika=>ka
use mod003,ipa=>pa
use mod003,iia=>ia
 ija=(/1,2,3/)
 ika=(/4,5,6/)
 ipa=(/7,8,9/)
iia(1:3) =ija
iia(4:6) =ika
iia(7:9) =ipa
do i=1,9
 if (iia(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub03()
use mod03
call sub()
end

call sub01()
call sub02()
call sub03()
print *,'pass'
end

module mod
integer zz,ia(9),ii,ja(3),jj,ka(3),kk,pa(3)
data ja/1,2,3/
data ka/4,5,6/
data pa/7,8,9/
private zz,ii,jj,kk
end
module mod01
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mod
ia(1:3) =ja
ia(4:6) =ka
ia(7:9) =pa
do i=1,9
 if (ia(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub01()
use mod01
call sub()
end

module mod002
integer ia(9),ja(3),zz,ii,jj,kk,ka(3),pa(3)
private zz,ii,jj,kk
end
module mod02
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mod002
 ja=(/1,2,3/)
 ka=(/4,5,6/)
 pa=(/7,8,9/)
ia(1:3) =ja
ia(4:6) =ka
ia(7:9) =pa
do i=1,9
 if (ia(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub02()
use mod02
call sub()
end

module mod003
integer ia(9),ii,ja(3),ka(3),pa(3),jj
common /com03/ ja,ka,pa
private ii,jj
end
module mod03
interface aaa
 module procedure sub
end interface
contains
subroutine sub()
use mod003
 ja=(/1,2,3/)
 ka=(/4,5,6/)
 pa=(/7,8,9/)
ia(1:3) =ja
ia(4:6) =ka
ia(7:9) =pa
do i=1,9
 if (ia(i).ne.i) write(6,*) "NG"
end do
end subroutine
end
subroutine sub03()
use mod03
call sub()
end

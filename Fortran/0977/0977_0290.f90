module m
type ty1
character(0,1)::c0=""
character(4,1)::c1="abcd"
character(2,1)::c2(10)
end type
type(ty1),save::typ1
end module
module mod
type aa
character(3)::mod_ch1='AAA'
character(1),allocatable::mod_ch2(:)
end type
type(aa),save::typ
end module
use m
use mod
call aaaaa
call bbbbb
call ccccc
call ddddd
print *,'pass'
contains
subroutine aaaaa
if(new_line("").ne.new_line(typ1%c2)) write(6,*) "NG"
if(new_line("a").ne.new_line(typ1%c2)) write(6,*) "NG"
if(new_line("a"//"b").ne.new_line(typ1%c2)) write(6,*) "NG"
if(new_line(typ1%c1//"a").ne.new_line(typ1%c2)) write(6,*) "NG"
if(new_line(typ1%c1).ne.new_line(" abcdef   ")) write(6,*) "NG"
if(new_line(typ1%c0).ne.new_line(" abcdef   ")) write(6,*) "NG"
if(new_line(typ1%c1).ne.new_line(typ1%c2)) write(6,*) "NG"
end subroutine
subroutine bbbbb
integer(4)::i,ia(10)
character(1,1)::c1
i=10
ia=10
if(new_line(c1).ne.char(10,kind(c1))) write(6,*) "NG"
if(new_line(c1).ne.char(i,kind(c1))) write(6,*) "NG"
do k=1,10
if(new_line(c1).ne.char(ia(k),kind(c1))) write(6,*) "NG"
end do
end subroutine
subroutine ccccc
character(4)::c1
c1=' A B '
if(new_line(trim(' A B ')).ne.new_line(trim(c1))) print *,'err'
if(new_line(repeat('a',2))/=new_line(repeat('z',0))) write(6,*) "NG"
end subroutine
subroutine ddddd
character(2),allocatable::c1(:)
character(2)::c2(2)
c2="ab"
if(new_line(c1)/=char(10,1)) write(6,*) "NG"
if(new_line(typ%mod_ch1)/=char(10,1)) write(6,*) "NG"
if(new_line(typ%mod_ch2)/=char(10,1)) write(6,*) "NG"
if(new_line(c2//"c")/=char(10,1)) write(6,*) "NG"
if(new_line(c2(1)(1:2)//"c")/=char(10,1)) write(6,*) "NG"
end subroutine
end

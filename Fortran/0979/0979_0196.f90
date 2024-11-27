call test01()
call test02()
print *,"pass"
end

subroutine test01()
i=1
call sub(i)
contains
subroutine sub(ii)
integer,value :: ii
if (ii.ne.1) write(6,*) "NG"
end subroutine
end 

module mod
contains
subroutine sub(ii)
integer,value :: ii
if (ii.ne.1) write(6,*) "NG"
end subroutine
subroutine sub2(ii)
character(len=10),value :: ii
if (ii.ne."1234567890") write(6,*) "NG"
end subroutine
subroutine sub3(jj,ii)
integer,value :: jj
integer ,parameter :: j=1
character(len=j+9),value :: ii
if (jj.ne.1) write(6,*) "NG"
if (ii.ne."1234567890") write(6,*) "NG"
end subroutine
subroutine sub4(jj,ii)
integer,value :: jj
character(len=jj+9),value :: ii*(10)
if (jj.ne.1) write(6,*) "NG"
if (ii.ne."1234567890") write(6,*) "NG"
entry ent(is111)
end subroutine
subroutine sub5(jj,ii)
integer,value ,optional:: jj
character(len=jj+9),value ,optional:: ii*(10)
if (jj.ne.1) write(6,*) "NG"
if (ii.ne."1234567890") write(6,*) "NG"
entry ent1()
end subroutine




end 

subroutine test02()
use mod
call sub(1)
call sub2("1234567890")
call sub3(1,"1234567890")
call sub4(1,"1234567890")
call sub5(1,"1234567890")
end

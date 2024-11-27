module m
character(1,1),protected::ccc
character(1,1),public,volatile::eee
end module
use m
call aaaaa
call bbbbb
print *,'pass'
contains
subroutine aaaaa(z)
integer,parameter::i=1
character(i,i)::c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12
character(i,i),allocatable::ca3(:)
character(i,i),pointer::cp4(:)
character(i,i),target::ct6
character(i,i)::ca7
character(i,i),volatile::cv8
character(i,i),parameter::x="a"
character(i,i),save::y="a"
character(i,i),optional::z
c1=new_line("a")
c2=new_line((/"a","b"/))
c3=new_line(ca3)
c4=new_line(cp4)
c5=new_line(z)
c6=new_line(ct6)
c7=new_line(ca7)
c8=new_line(cv8)
c9=new_line(x)
c10=new_line(y)
c11=new_line(ccc)
c12=new_line(eee)
if(c1.ne.char(i*10,1)) write(6,*) "NG"
if(c2.ne.char(10*i,1)) write(6,*) "NG"
if(c1.ne.achar(i*10)) write(6,*) "NG"
if(c2.ne.achar(10*i)) write(6,*) "NG"
if(c3.ne.char(10_1,1)) write(6,*) "NG"
if(c3.ne.achar(10_1)) write(6,*) "NG"
if(c4.ne.char(10_2,i)) write(6,*) "NG"
if(c4.ne.achar(10_2)) write(6,*) "NG"
if(c5.ne.char(10_8,i)) write(6,*) "NG"
if(c5.ne.achar(10_8)) write(6,*) "NG"
if(c6.ne.char(10,i)) write(6,*) "NG"
if(c6.ne.achar(10)) write(6,*) "NG"
if(c7.ne.char(10,i)) write(6,*) "NG"
if(c7.ne.achar(10)) write(6,*) "NG"
if(c8.ne.char(10,i)) write(6,*) "NG"
if(c8.ne.achar(10)) write(6,*) "NG"
if(c9.ne.char(10)) write(6,*) "NG"
if(c9.ne.achar(10)) write(6,*) "NG"
if(c10.ne.char(10)) write(6,*) "NG"
if(c10.ne.achar(10)) write(6,*) "NG"
if(c11.ne.char(10)) write(6,*) "NG"
if(c11.ne.achar(10)) write(6,*) "NG"
if(c12.ne.char(10)) write(6,*) "NG"
if(c12.ne.achar(10)) write(6,*) "NG"
end subroutine
subroutine bbbbb(z)
integer,parameter::i=1
character(1,i)::c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,ca
character(1,i),allocatable::ca3(:)
character(1,i),pointer::cp4(:)
character(1,i),target::ct6
character(1,i)::ca7
character(1,i),volatile::cv8
character(1,i),parameter::x="a"
character(1,i),save::y="a"
character(1,i),optional::z
ca=i_"a"
c1=new_line(i_"a")
c2=new_line((/ca,i_"b"/))
c3=new_line(ca3)
c4=new_line(cp4)
c5=new_line(z)
c6=new_line(ct6)
c7=new_line(ca7)
c8=new_line(cv8)
c9=new_line(x)
c10=new_line(y)
if(c1.ne.char(10,i)) write(6,*) "NG"
if(c2.ne.char(10,i)) write(6,*) "NG"
if(c1.ne.achar(10)) write(6,*) "NG"
if(c2.ne.achar(10)) write(6,*) "NG"
if(c3.ne.char(10_1,i)) write(6,*) "NG"
if(c3.ne.achar(10_1)) write(6,*) "NG"
if(c4.ne.char(10_2,i)) write(6,*) "NG"
if(c4.ne.achar(10_2)) write(6,*) "NG"
if(c5.ne.char(10_8,i)) write(6,*) "NG"
if(c5.ne.achar(10_8)) write(6,*) "NG"
if(c6.ne.char(10,i)) write(6,*) "NG"
if(c6.ne.achar(10)) write(6,*) "NG"
if(c7.ne.char(10,i)) write(6,*) "NG"
if(c7.ne.achar(10)) write(6,*) "NG"
if(c8.ne.char(10,i)) write(6,*) "NG"
if(c8.ne.achar(10)) write(6,*) "NG"
if(c9.ne.char(10,i)) write(6,*) "NG"
if(c9.ne.achar(10)) write(6,*) "NG"
if(c10.ne.char(10,i)) write(6,*) "NG"
if(c10.ne.achar(10)) write(6,*) "NG"
end subroutine
end

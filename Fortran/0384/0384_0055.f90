call test01(0)
i=ifun(0)
call test02(0)
i=ifun2(0)
i=i
print *,'pass'
end


recursive subroutine test01(i)
procedure(test01) ,pointer :: tttt
integer :: i
if (i.eq.1) return
tttt=>test01
call tttt(1)
end

recursive subroutine test02(i)
procedure(test01) ,pointer :: tttt
integer :: i
if (i.eq.1) return
tttt=>test02
call tttt(1)
contains
recursive subroutine test01(i)
procedure(test01) ,pointer :: tttt
integer :: i
if (i.eq.1) return
tttt=>test02
call tttt(1)
end subroutine
end


recursive function ifun(i) result(iii)
procedure(ifun) ,pointer :: tttt
integer :: i,iii
iii =1
if (i.eq.1) return
tttt=>ifun
ii= tttt(1)
ii=ii
end

recursive function ifun2(i) result(iii)
procedure(ifun) ,pointer :: tttt
integer :: i,iii
iii =1
if (i.eq.1) return
tttt=>ifun2
ii= tttt(1)
ii=ii
contains
recursive function ifun(i) result(iii)
procedure(ifun) ,pointer :: tttt
integer :: i,iii
iii =1
if (i.eq.1) return
tttt=>ifun2
ii= tttt(1)
ii=ii
end function
end


call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

subroutine test01()
integer a(10),i(10),j(10)
a=1
i=0
j=(/1,2,3,4,5,6,7,8,9,10/)
where(a.eq.1) i=ifun(j)
do ido=1,10
if (i(ido).ne.ido+1) write(6,*) "NG"
end do
contains
elemental function ifun(ii)
intent(in) :: ii
ifun=ii+1
end function
end
subroutine test02()
integer a(10),i(10),j(10)
a=1
i=0
j=(/1,2,3,4,5,6,7,8,9,10/)
where(a.eq.1) 
 i=ifun(j)
end where
do ido=1,10
if (i(ido).ne.ido+1) write(6,*) "NG"
end do
contains
elemental function ifun(ii)
intent(in) :: ii
ifun=ii+1
end function
end
subroutine test03()
integer a(10),i(10),j(10)
a=1
i=0
j=(/1,2,3,4,5,6,7,8,9,10/)
where(a.eq.2) 
 i=a
else where
 i=ifun(j)
end where
do ido=1,10
if (i(ido).ne.ido+1) write(6,*) "NG"
end do
contains
elemental function ifun(ii)
intent(in) :: ii
ifun=ii+1
end function
end
subroutine test04()
integer a(10),i(10),j(10)
a=(/2,1,2,1,2,1,2,1,2,1/)
i=0
j=(/1,2,3,4,5,6,7,8,9,10/)
where(a.eq.2) 
 i=99
else where
 i=ifun(j)
end where
do ido=1,10,2
if (i(ido).ne.99) write(6,*) "NG"
end do
do ido=2,10,2
if (i(ido).ne.ido+1) write(6,*) "NG"
end do
contains
elemental function ifun(ii)
intent(in) :: ii
ifun=ii+1
end function
end

call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
integer i(10),j(10)
i=0
j=(/1,2,3,4,5,6,7,8,9,10/)
i=ifun(j)
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
integer i(10),j(10)
i=0
j=(/1,2,3,4,5,6,7,8,9,10/)
write(17,*) ifun(j)
rewind 17
read (17,*) i
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
integer j(10)
j=(/1,2,3,4,5,6,7,8,9,10/)
call inter_sub(ifun(j))
contains
subroutine inter_sub(i)
integer i(10)
do ido=1,10
if (i(ido).ne.ido+1) write(6,*) "NG"
end do
end subroutine
elemental function ifun(ii)
intent(in) :: ii
ifun=ii+1
end function
end

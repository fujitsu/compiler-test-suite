call test01()
print *,'pass'
end

subroutine test01()
integer,allocatable :: str(:)
call sub(1)
do i=1,10
if (str(i).ne.i) write(6,*) "NG"
end do
call sub(2)
do i=1,10
if (str(i).ne.i) write(6,*) "NG"
end do
contains
subroutine sub(i)
if (i.eq.1)  then
   allocate(str(1:10))
   str=(/1,2,3,4,5,6,7,8,9,10/)
end if
do ii=1,10
if (str(ii).ne.ii) write(6,*) "NG"
end do
end subroutine
end

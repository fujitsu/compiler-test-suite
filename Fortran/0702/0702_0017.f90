 call s1
 print *,'pass'
 end
subroutine s1
integer, dimension(10) ::  old,new
integer, dimension(20) :: recno
integer                :: repno
integer, parameter     :: maxreps = 1000000

real :: x

integer  :: i

do i = 1,100
  call random_number(x)
  write(1,*)i,x
end do
repno = 0
old=0;new=0
call random_seed(get=old)

i = 0
do i = 1,maxreps
    call random_number(x)
  call random_seed(get=new)
  if(all(old == new)) then
    print *,"dupe on iteration no ",i
    repno = repno + 1
    recno(repno) = i
  end if

  if(modulo(i,10000) == 0) then
    write(1,*)i
  end if
end do
write(1,"(4i10)")recno(1:repno)
do i = 1,repno-1
  print "(i3,2x,i10)", i,recno(i+1)-recno(i)
end do
end

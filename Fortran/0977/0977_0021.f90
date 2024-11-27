subroutine sub(pi,pj,ai,aj)
  integer,pointer :: pi(:),pj(:)
  integer,allocatable :: ai(:),aj(:)
  write(1,*)pi,ai
end subroutine
interface
subroutine sub(pi,pj,ai,aj)
  integer,pointer :: pi(:),pj(:)
  integer,allocatable :: ai(:),aj(:)
end subroutine
end interface
  integer,pointer :: pi(:),pj(:)
  integer,allocatable :: ai(:),aj(:)
  allocate(pi(2),ai(2))
pi=(/1,2/)
ai=(/11,12/)
call sub(pi,pj,ai,aj)
rewind 1
read(1,*)i1,i2,i3,i4
if (i1/=1)write(6,*) "NG"
if (i2/=2)write(6,*) "NG"
if (i3/=11)write(6,*) "NG"
if (i4/=12)write(6,*) "NG"
print *,'pass'
end

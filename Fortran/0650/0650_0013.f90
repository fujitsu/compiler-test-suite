call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

subroutine test01()
integer a(10)
a=0
call sub01()
if (any(a.ne.(/(i+1,i=1,10)/))) print *,'NG'
contains
subroutine sub01()
do i=1,10
  a(i)=i
end do
call sub02()
end subroutine
subroutine sub02()
do i=1,10
  a(i)=a(i)+1
end do
end subroutine
end subroutine

subroutine test02()
integer a(10),b(10)
equivalence (a,jj)
equivalence (jj,b)
a=0
call sub01()
if (any(a.ne.(/(i+1,i=1,10)/))) print *,'NG'
contains
subroutine sub01()
b=100
do i=1,10
  a(i)=i
end do
call sub02()
end subroutine
subroutine sub02()
do i=1,10
  b(i)=b(i)+1
end do
end subroutine
end subroutine

subroutine test03()
integer a
allocatable a(:)
allocate(a(10))
a=0
call sub01()
if (any(a.ne.(/(i+1,i=1,10)/))) print *,'NG'
contains
subroutine sub01()
b=100
do i=1,10
  a(i)=i
end do
call sub02()
end subroutine
subroutine sub02()
do i=1,10
  a(i)=a(i)+1
end do
end subroutine
end subroutine

subroutine test04()
integer a
pointer   a(:)
integer,target:: it(10)
call sub01()
if (any(a.ne.(/(i+1,i=1,10)/))) print *,'NG'
call sub03()
if (any(a.ne.(/(i,i=1,10)/))) print *,'NG'
contains
subroutine sub03()
do i=1,10
  it(i)=i
end do
end subroutine
subroutine sub01()
a=>it
do i=1,10
  a(i)=i
end do
call sub02()
end subroutine
subroutine sub02()
do i=1,10
  a(i)=a(i)+1
end do
end subroutine
end subroutine

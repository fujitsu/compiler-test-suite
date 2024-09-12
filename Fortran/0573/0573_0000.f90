call sub(NULL(),NULL(),NULL(),NULL(),NULL(),NULL())
print*,"pass"
contains
subroutine sub(a,b,c,d,e,g)
integer,pointer::a(:)
character,pointer::b(:)
real,pointer::c(:)
logical,pointer::d(:)
complex,pointer::e(:)
character(len=2),pointer::g(:)
allocate(a(10))
a =10
if(any(a.ne.10))print*,"101"
allocate(c(10))
c = 10.2
if(any(c.ne.10.2))print*,"102"
allocate(b(10))
b= 'a'
if(any(b.ne.'a'))print*,"103"
allocate(d(10))
d = .true.
if(any(d.neqv..true.))print*,"104"
allocate(e(10))
e = (1,2)
if(any(e.ne.(1,2)))print*,"105"
allocate(g(10))
g ='aa'
if(any(g.ne.'aa'))print*,"106"
if(len(g(1)).ne.2)print*,"107"
end subroutine
subroutine sub2(a,b,c,d,e,g)
integer,allocatable::a(:)
character,allocatable::b(:)
real,allocatable::c(:)
logical,allocatable::d(:)
complex,allocatable::e(:)
character(*),allocatable::g(:)
if(any(a.ne.10))print*,"101"
if(any(c.ne.10.2))print*,"102"
if(any(b.ne.'a'))print*,"103"
if(any(d.neqv..true.))print*,"104"
if(any(e.ne.(1,2)))print*,"105"
if(any(g.ne.'aa'))print*,"106"
if(len(g(1)).ne.2)print*,"107"
end subroutine
end

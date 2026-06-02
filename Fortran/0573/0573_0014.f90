call sub(NULL(),NULL(),NULL(),NULL(),NULL(),NULL())
print*,"pass"
contains
subroutine sub(a,b,c,d,e,g)
integer,allocatable::a
character,allocatable::b
real,allocatable::c
logical,allocatable::d
complex,allocatable::e
character(len=2),allocatable::g
allocate(a)
a =10
if(a.ne.10)print*,"101"
allocate(c)
c = 10.2
if(c.ne.10.2)print*,"102"
allocate(b)
if(len(b).ne.1)print*,"103"
b= 'a'
allocate(d)
d = .true.
if(d.neqv..true.)print*,"104"
allocate(e)
e = (1,2)
if(e.ne.(1,2))print*,"105"
allocate(g)
if(len(g).ne.2)print*,"106"
g ='aa'
call sub2(a,b,c,d,e,g)
end subroutine
subroutine sub2(a,b,c,d,e,g)
integer,allocatable::a
character,allocatable::b
real,allocatable::c
logical,allocatable::d
complex,allocatable::e
character(*),allocatable::g
if(a.ne.10)print*,"101"
if(c.ne.10.2)print*,"102"
if(len(b).ne.1)print*,"103"
if(d.neqv..true.)print*,"104"
if(e.ne.(1,2))print*,"105"
if(len(g).ne.2)print*,"106"
end subroutine
end

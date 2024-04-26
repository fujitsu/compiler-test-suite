call test()
print *,'pass'
end
subroutine test()
type coordinates
real :: latitude=0.0, longitude=0.0
end type coordinates
type place
character(len=20) :: name
type(coordinates) :: location
end type place
type link
integer :: j
type (link), pointer :: next=>null()
end type link
type(link) :: saa
type(place)::ppp
ppp%name='as'
if(ppp%location%latitude.ne.0.0) print *,'err'
if(ppp%location%longitude.ne.0.0) print *,'err'
allocate(saa%next)
allocate(saa%next%next)
saa%next%j=1
end

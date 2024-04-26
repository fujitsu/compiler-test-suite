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
type (link) , pointer :: next=>null( )
end type link
type(coordinates) :: my_coordinates
type(place) :: my_town
type(place), dimension(10) :: cities
type(link) :: head
allocate(head%next)
cities%name='aa7'
my_town%name='aaaa'
my_coordinates%latitude =1
cities%name= cities%name
my_town%name= my_town%name
my_coordinates%latitude = my_coordinates%latitude
end

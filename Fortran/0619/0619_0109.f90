subroutine  s1
type x
  integer::n1=2
end type
integer,allocatable,dimension(:)::k1,k2
type(x),allocatable,dimension(:)::k3
character(:),allocatable,dimension(:)::k4,k5
character(2),allocatable,dimension(:)::k6,k7

n=1
allocate(k1(2),k2(3),stat=is)
allocate(k1(2),k3(3),stat=is)
allocate(character::k4(2),k5(3),stat=is)
allocate(character(n)::k6(2),k7(3),stat=is)

end
call s1
print *,'pass'
end

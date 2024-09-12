type NODE
  integer,allocatable :: ii(:)
  real,allocatable :: rr(:)
  logical,allocatable :: ll(:)
  character,allocatable :: ch(:)
  complex,allocatable :: cmp(:)
end type

type(NODE)::obj
integer::res
allocate(obj%ii(2))
allocate(obj%rr(3))
allocate(obj%ll(4))
allocate(obj%ch(3))
allocate(obj%cmp(2))
obj%ii = 2
obj%rr = 3.3
obj%ll = .FALSE.
obj%ch = 'C'
obj%cmp = (4.4,5.5)
res=99
res=fun(obj)
if(any(obj%ii /= 2))print *, 101
if(any(obj%rr < 3) .and. any(obj%rr > 4))print *, 102
if(any(obj%ll .neqv. .FALSE.))print *, 103
if(any(obj%ch /= 'C'))print *, 104
if(any(obj%cmp /= (4.4,5.5)))print *, 105
if(res /= 22)print *, 106
print *, "PASS"
contains
pure function fun(dmy)
  type(NODE),value::dmy
  integer::fun
  dmy%ii = 1
  dmy%rr = 9.9
  dmy%ll = .TRUE.
  dmy%ch = 'H'
  dmy%cmp = (5.5,4.4)
  fun=22
end function
end

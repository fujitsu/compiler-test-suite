type z
  integer(1),allocatable::zz(:)
  logical(1),allocatable::ll(:)
endtype
type (z) :: a

n=0
allocate(a%zz(5))
allocate(a%ll(5))

a%zz=(/0,1,2,2,10/)
if ( (a%zz(1)==a%zz(2) .or. a%zz(3)==a%zz(4) ) .and. a%zz(5)==10 ) then
  n=n+1
else
  write(6,*) "NG"
endif

a%zz=(/1,1,1,2,10/)
if ( (a%zz(1)==a%zz(2) .or. a%zz(3)==a%zz(4) ) .and. a%zz(5)==10 ) then
  n=n+1
else
  write(6,*) "NG"
endif

a%zz=(/1,1,2,2,3/)
if ( (a%zz(1)==a%zz(2) .or. a%zz(3)==a%zz(4) ) .and. a%zz(5)==10 ) then
  write(6,*) "NG"
else
  n=n+1
endif

a%ll=(/.true.,.true.,.true.,.true.,.true./)
if ( a%ll(1) .and. ( a%ll(2) .or. a%ll(3) .or. a%ll(4) ) .and. a%ll(5) ) then
  n=n+1
else
  write(6,*) "NG"
endif

a%ll=(/.true.,.false.,.false.,.true.,.true./)
if ( a%ll(1) .and. ( a%ll(2) .or. a%ll(3) .or. a%ll(4) ) .and. a%ll(5) ) then
  n=n+1
else
  write(6,*) "NG"
endif

a%ll=(/.true.,.false.,.true.,.false.,.true./)
if ( a%ll(1) .and. ( a%ll(2) .or. a%ll(3) .or. a%ll(4) ) .and. a%ll(5) ) then
  n=n+1
else
  write(6,*) "NG"
endif

a%ll=(/.true.,.true.,.false.,.false.,.true./)
if ( a%ll(1) .and. ( a%ll(2) .or. a%ll(3) .or. a%ll(4) ) .and. a%ll(5) ) then
  n=n+1
else
  write(6,*) "NG"
endif

a%ll=(/.false.,.true.,.true.,.true.,.false./)
if ( a%ll(1) .and. ( a%ll(2) .or. a%ll(3) .or. a%ll(4) ) .and. a%ll(5) ) then
  write(6,*) "NG"
else
  n=n+1
endif

a%ll=(/.true.,.true.,.true.,.true.,.false./)
if ( a%ll(1) .and. ( a%ll(2) .or. a%ll(3) .or. a%ll(4) ) .and. a%ll(5) ) then
  write(6,*) "NG"
else
  n=n+1
endif

a%ll=(/.false.,.true.,.true.,.true.,.true./)
if ( a%ll(1) .and. ( a%ll(2) .or. a%ll(3) .or. a%ll(4) ) .and. a%ll(5) ) then
  write(6,*) "NG"
else
  n=n+1
endif

if (.not.(n==10)) write(6,*) "NG"
print *,'pass'

end

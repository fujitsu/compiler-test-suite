module sub_mod
integer, parameter        ::N=100
real,    dimension(1:N)   ::maxary,minary
real,    dimension(1:N)   ::addary,subary
logical, dimension(1:N)   ::andary,orary
contains
subroutine init_ary()
maxary = (/((real(mod(i,11))/(real(mod(i,7)+1))),i=1,N)/)
minary = (/((real(mod(i,17))/(real(mod(i,11)+1))),i=1,N)/)
addary = (/((real(mod(i,19))/(real(mod(i,7)+1))),i=1,N)/)
subary = (/((real(mod(i,23))/(real(mod(i,5)+1))),i=1,N)/)
andary = (/((mod(i,6)==mod(i,4)),i=1,N)/)
orary  = (/((mod(i,8)==mod(i,4)),i=1,N)/)
end subroutine
end module

program main
use sub_mod

call init_ary()
call all_reduction1()
call all_reduction2()

contains
subroutine all_reduction1()
real maxd, subd
logical ord
integer,parameter :: IANS=4884

subd = 0.
ord  = orary(1)
maxd = maxary(1)
do i=1, N
  subd = subd + subary(i)
  subd = subd
  ord  = ord .or. orary(i)
  maxd = max(maxd,maxary(i))
  maxd = maxd
enddo

if (ord .eqv. .true.) then
  ires = int(maxd*subd)
else
  ires = maxd+subd
endif

if (ires == IANS) then
  print *,'OK'
else
  print *,'NG',ires
endif

end subroutine

subroutine all_reduction2()
real mind, addd
logical andd
integer,parameter :: IANS=326

addd = 0.
andd = andary(1)
mind = minary(1)
do i=1, N
  addd = addd + addary(i)
  andd = andd .and. andary(i)
  mind = min(mind,minary(i))
  mind = mind
enddo

if (andd .eqv. .true.) then
  ires = int(mind*addd)
else
  ires = mind+addd
endif

if (ires == IANS) then
  print *,'OK'
else
  print *,'NG',ires
endif

end subroutine
end program

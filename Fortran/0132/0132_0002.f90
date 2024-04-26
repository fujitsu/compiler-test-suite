program main
integer,parameter::I=4
integer,parameter::J=8
integer,parameter::K=16
integer,parameter::L=4
real(kind=I) r4d1,r4d2
real(kind=J) r8d1,r8d2
real(kind=K) r16d1,r16d2
real(kind=L) r4d3,r4d4
logical(kind=1) l1res
integer(kind=2) i2res
logical(kind=4) l4res
logical(kind=8) l8res

call init_dataI(r4d1,r4d2)
call init_dataJ(r8d1,r8d2)
call init_dataK(r16d1,r16d2)
call init_dataL(r4d3,r4d4)

print *,'test start'
if (r4d1==r4d1) then
  l1res = .true.
else
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (r8d1==r8d1) then
  i2res = 1
else
  i2res = 0
endif
if (i2res == 0) print *,'NG'

if (r16d1==r16d1) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (r4d3==r4d3) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (r4d1==r8d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (r4d1==r16d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (r4d1==r4d4) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (r16d1==r8d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (r4d3==r8d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (r16d1==r4d4) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (r8d1==r4d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res == 0) print *,'NG'

if (r16d1==r4d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res == 0) print *,'NG'

if (r4d3==r4d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res == 0) print *,'NG'

if (r8d2==r16d2) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res == 0) print *,'NG'

if (r8d2==r4d4) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res == 0) print *,'NG'

if (r4d3==r16d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res == 0) print *,'NG'

if (r8d1==r4d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (r16d1==r4d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (r4d3==r4d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (r8d2==r16d1) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (r8d2==r4d3) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (r4d3==r16d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (r8d2==r4d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (r16d2==r4d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (r4d4==r4d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (r8d1==r16d1) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (r8d1==r4d3) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (r4d4==r16d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

print *,'test OK'
print *,'test end'

contains
subroutine init_dataI(a,b)
real(kind=I) a,b
a = 2
b = 2
end subroutine
subroutine init_dataJ(a,b)
real(kind=J) a,b
a = 2
b = 2
end subroutine
subroutine init_dataK(a,b)
real(kind=K) a,b
a = 2
b = 2
end subroutine
subroutine init_dataL(a,b)
real(kind=L) a,b
a = 2
b = 2
end subroutine
end program

program main
integer,parameter::I=1
integer,parameter::J=2
integer,parameter::K=4
integer,parameter::L=8
integer(kind=I) i1d1,i1d2
integer(kind=J) i2d1,i2d2
integer(kind=K) i4d1,i4d2
integer(kind=L) i8d1,i8d2
logical(kind=I) l1res
logical(kind=J) l2res
logical(kind=K) l4res
logical(kind=L) l8res

call init_dataI(i1d1,i1d2)
call init_dataJ(i2d1,i2d2)
call init_dataK(i4d1,i4d2)
call init_dataL(i8d1,i8d2)

print *,'test start'
if (i1d1==i1d1) then
  l1res = .true.
else
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (i2d1==i2d1) then
  l2res = .true.
else
  l2res = .false.
endif
if (.not.l2res) print *,'NG'

if (i4d1==i4d1) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (i8d1==i8d1) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (i1d1==i2d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (i1d1==i4d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (i1d1==i8d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (i4d1==i2d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (i8d1==i2d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (i4d1==i8d2) then
  l1res = .true.
else            
  l1res = .false.
endif
if (.not.l1res) print *,'NG'

if (i2d1==i1d1) then
  l2res = .true.
else            
  l2res = .false.
endif
if (.not.l2res) print *,'NG'

if (i4d1==i1d1) then
  l2res = .true.
else            
  l2res = .false.
endif
if (.not.l2res) print *,'NG'

if (i8d1==i1d1) then
  l2res = .true.
else            
  l2res = .false.
endif
if (.not.l2res) print *,'NG'

if (i2d2==i4d2) then
  l2res = .true.
else            
  l2res = .false.
endif
if (.not.l2res) print *,'NG'

if (i2d2==i8d2) then
  l2res = .true.
else            
  l2res = .false.
endif
if (.not.l2res) print *,'NG'

if (i8d1==i4d1) then
  l2res = .true.
else            
  l2res = .false.
endif
if (.not.l2res) print *,'NG'

if (i2d1==i1d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (i4d1==i1d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (i8d1==i1d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (i2d2==i4d1) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (i2d2==i8d1) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (i8d1==i4d2) then
  l4res = .true.
else            
  l4res = .false.
endif
if (.not.l4res) print *,'NG'

if (i2d2==i1d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (i4d2==i1d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (i8d2==i1d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (i2d1==i4d1) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (i2d1==i8d1) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

if (i8d2==i4d2) then
  l8res = .true.
else            
  l8res = .false.
endif
if (.not.l8res) print *,'NG'

print *,'test OK'
print *,'test end'

contains
subroutine init_dataI(a,b)
integer(kind=I) a,b
a = 2
b = 2
end subroutine
subroutine init_dataJ(a,b)
integer(kind=J) a,b
a = 2
b = 2
end subroutine
subroutine init_dataK(a,b)
integer(kind=K) a,b
a = 2
b = 2
end subroutine
subroutine init_dataL(a,b)
integer(kind=L) a,b
a = 2
b = 2
end subroutine
end program

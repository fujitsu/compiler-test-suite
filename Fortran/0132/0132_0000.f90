program main
integer,parameter::I=1
integer,parameter::J=2
integer,parameter::K=4
integer,parameter::L=8
integer(kind=I) i1d1,i1d2,i1res
integer(kind=J) i2d1,i2d2,i2res
integer(kind=K) i4d1,i4d2,i4res
integer(kind=L) i8d1,i8d2,i8res

call init_dataI(i1d1,i1d2)
call init_dataJ(i2d1,i2d2)
call init_dataK(i4d1,i4d2)
call init_dataL(i8d1,i8d2)

print *,'test start'
if (i1d1==i1d1) then
  i1res = 1
else
  i1res = 0
endif
if (i1res /= 1) print *,'NG'

if (i2d1==i2d1) then
  i2res = 1
else
  i2res = 0
endif
if (i2res /= 1) print *,'NG'

if (i4d1==i4d1) then
  i4res = 1
else            
  i4res = 0
endif
if (i4res /= 1) print *,'NG'

if (i8d1==i8d1) then
  i8res = 1
else            
  i8res = 0
endif
if (i8res /= 1) print *,'NG'

if (i1d1==i2d2) then
  i1res = 1
else            
  i1res = 0
endif
if (i1res /= 1) print *,'NG'

if (i1d1==i4d2) then
  i1res = 1
else            
  i1res = 0
endif
if (i1res /= 1) print *,'NG'

if (i1d1==i8d2) then
  i1res = 1
else            
  i1res = 0
endif
if (i1res /= 1) print *,'NG'

if (i4d1==i2d2) then
  i1res = 1
else            
  i1res = 0
endif
if (i1res /= 1) print *,'NG'

if (i8d1==i2d2) then
  i1res = 1
else            
  i1res = 0
endif
if (i1res /= 1) print *,'NG'

if (i4d1==i8d2) then
  i1res = 1
else            
  i1res = 0
endif
if (i1res /= 1) print *,'NG'

if (i2d1==i1d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res /= 1) print *,'NG'

if (i4d1==i1d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res /= 1) print *,'NG'

if (i8d1==i1d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res /= 1) print *,'NG'

if (i2d2==i4d2) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res /= 1) print *,'NG'

if (i2d2==i8d2) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res /= 1) print *,'NG'

if (i8d1==i4d1) then
  i2res = 1
else            
  i2res = 0
endif
if (i2res /= 1) print *,'NG'

if (i2d1==i1d2) then
  i4res = 1
else            
  i4res = 0
endif
if (i4res /= 1) print *,'NG'

if (i4d1==i1d2) then
  i4res = 1
else            
  i4res = 0
endif
if (i4res /= 1) print *,'NG'

if (i8d1==i1d2) then
  i4res = 1
else            
  i4res = 0
endif
if (i4res /= 1) print *,'NG'

if (i2d2==i4d1) then
  i4res = 1
else            
  i4res = 0
endif
if (i4res /= 1) print *,'NG'

if (i2d2==i8d1) then
  i4res = 1
else            
  i4res = 0
endif
if (i4res /= 1) print *,'NG'

if (i8d1==i4d2) then
  i4res = 1
else            
  i4res = 0
endif
if (i4res /= 1) print *,'NG'

if (i2d2==i1d2) then
  i8res = 1
else            
  i8res = 0
endif
if (i8res /= 1) print *,'NG'

if (i4d2==i1d2) then
  i8res = 1
else            
  i8res = 0
endif
if (i8res /= 1) print *,'NG'

if (i8d2==i1d2) then
  i8res = 1
else            
  i8res = 0
endif
if (i8res /= 1) print *,'NG'

if (i2d1==i4d1) then
  i8res = 1
else            
  i8res = 0
endif
if (i8res /= 1) print *,'NG'

if (i2d1==i8d1) then
  i8res = 1
else            
  i8res = 0
endif
if (i8res /= 1) print *,'NG'

if (i8d2==i4d2) then
  i8res = 1
else            
  i8res = 0
endif
if (i8res /= 1) print *,'NG'

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

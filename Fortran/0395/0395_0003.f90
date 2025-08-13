program main
type point
  real :: x, y
end type point

type, EXTENDS(point) :: color_point
  integer :: color
end type color_point

type(point),parameter       :: pv  = point(1.0, 2.0)
type(color_point) :: cpv2 = color_point(pv ,3)
type(color_point) :: cpv
cpv = color_point(pv ,3)

write(2,*)cpv2%point
write(2,*)cpv2%point%x, cpv%point%y
write(2,*)cpv2%x, cpv%y
write(2,*)cpv2%color

write(2,*)cpv%point
write(2,*)cpv%point%x, cpv%point%y
write(2,*)cpv%x, cpv%y
write(2,*)cpv%color
rewind 2
read (2,*) a,b; if (a/=1.0) print *,101
read (2,*) a,b; if (a/=1.0) print *,102
read (2,*) a,b; if (a/=1.0) print *,103
read (2,*) k  ; if (k/=3) print *,104
read (2,*) a,b; if (a/=1.0) print *,201
read (2,*) a,b; if (a/=1.0) print *,202
read (2,*) a,b; if (a/=1.0) print *,203
read (2,*) k  ; if (k/=3) print *,204
print *,'pass'
end

do i=1,1000
call s
end do
write(3,*)'Function : '
print *,'pass'
end
subroutine s
parameter( NX=4, NY=4, NZ=4, NT=4 )
parameter( NC=3 )
type a
  sequence
  COMPLEX*16, DIMENSION(NC,0:NX+1,0:NY+1,0:NZ+1,0:NT+1,4) :: f
end type
type (a)::v1,f
v1= f()
if (any(abs(v1%f(1:2,0,0,0,0,1)-(1.0,1.0))>0.001))print *,'error'
end

function f()
parameter( NX=4, NY=4, NZ=4, NT=4 )
parameter( NC=3 )
type a
  sequence
  COMPLEX*16, DIMENSION(NC,0:NX+1,0:NY+1,0:NZ+1,0:NT+1,4) :: f
end type
type(a) f
call set(f%f,size(f%f))
end
subroutine sub(f)
parameter( NX=4, NY=4, NZ=4, NT=4 )
parameter( NC=3 )
type a
  sequence
  COMPLEX*16, DIMENSION(NC,0:NX+1,0:NY+1,0:NZ+1,0:NT+1,4) :: f
end type
type(a) f
call set(f%f,size(f%f))
end
subroutine set(a,i)
complex*16 a(i)
a=(1,1)
end


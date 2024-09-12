module m1
   type x00e
     integer::x00e1=5
   end type
   type x00d
     integer::x00d1=4
     type(x00e)::x00d2
     type(x00e),pointer::x00d3=>NULL()
   end type
   type x00c
     integer::x00c1=3
     type(x00d)::x00c2
     type(x00d),pointer::x00c3=>NULL()
   end type
   type x00b
     integer::x00b1=2
     type(x00c)::x00b2
     type(x00c),pointer::x00b3=>NULL()
   end type
   type x00a
     integer::x00a1=1
     type(x00b)::x00a2
     type(x00b),pointer::x00a3=>NULL()
   end type
contains
subroutine s1(a,p0a)
type(x00a),intent(out)::a
type(x00a),pointer,intent(out)::p0a
allocate(p0a)
if (a%x00a1 /= 1) print *,'001'
if (a%x00a2%x00b1 /= 2) print *,'002'
if (a%x00a2%x00b2%x00c1 /= 3) print *,'003'
if (a%x00a2%x00b2%x00c2%x00d1 /= 4) print *,'004'
if (a%x00a2%x00b2%x00c2%x00d2%x00e1 /= 5) print *,'005'
if (associated(a%x00a3)) print *,'006'
if (p0a%x00a1 /= 1) print *,'101'
if (p0a%x00a2%x00b1 /= 2) print *,'102'
if (p0a%x00a2%x00b2%x00c1 /= 3) print *,'103'
if (p0a%x00a2%x00b2%x00c2%x00d1 /= 4) print *,'104'
if (p0a%x00a2%x00b2%x00c2%x00d2%x00e1 /= 5) print *,'105'
if (associated(p0a%x00a3)) print *,'106'

allocate(a%x00a3)
allocate(a%x00a3%x00b3)
allocate(a%x00a3%x00b3%x00c3)
allocate(a%x00a3%x00b3%x00c3%x00d3)
if (a%x00a3%x00b1 /= 2) print *,'a002'
if (a%x00a3%x00b3%x00c1 /= 3) print *,'a003'
if (a%x00a3%x00b3%x00c3%x00d1 /= 4) print *,'a004'
if (a%x00a3%x00b3%x00c3%x00d3%x00e1 /= 5) print *,'a005'
end subroutine
end 
use m1
type(x00a)::a
type(x00a),pointer::p0a
call s1(a,p0a)
print *,'pass'
end

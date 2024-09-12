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
subroutine s1
type(x00a)::a
type(x00a),pointer::p0a
type(x00b)::b
type(x00b),pointer::p0b
type(x00c)::c
type(x00c),pointer::p0c
type(x00d)::d
type(x00d),pointer::p0d
allocate(p0a)
allocate(p0b)
allocate(p0c)
allocate(p0d)
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

if (b%x00b1 /= 2) print *,'b002'
if (b%x00b2%x00c1 /= 3) print *,'b003'
if (b%x00b2%x00c2%x00d1 /= 4) print *,'b004'
if (b%x00b2%x00c2%x00d2%x00e1 /= 5) print *,'b005'
if (associated(b%x00b3)) print *,'b006'
if (p0b%x00b1 /= 2) print *,'b102'
if (p0b%x00b2%x00c1 /= 3) print *,'b103'
if (p0b%x00b2%x00c2%x00d1 /= 4) print *,'b104'
if (p0b%x00b2%x00c2%x00d2%x00e1 /= 5) print *,'b105'
if (associated(p0b%x00b3)) print *,'b106'

if (c%x00c1 /= 3) print *,'c003'
if (c%x00c2%x00d1 /= 4) print *,'c004'
if (c%x00c2%x00d2%x00e1 /= 5) print *,'c005'
if (associated(c%x00c3)) print *,'c006'
if (p0c%x00c1 /= 3) print *,'c103'
if (p0c%x00c2%x00d1 /= 4) print *,'c104'
if (p0c%x00c2%x00d2%x00e1 /= 5) print *,'c105'
if (associated(p0c%x00c3)) print *,'c106'

if (d%x00d1 /= 4) print *,'d004'
if (d%x00d2%x00e1 /= 5) print *,'d005'
if (associated(d%x00d3)) print *,'d006'
if (p0d%x00d1 /= 4) print *,'d104'
if (p0d%x00d2%x00e1 /= 5) print *,'d105'
if (associated(p0d%x00d3)) print *,'d106'
end subroutine
end 
use m1
call s1
print *,'pass'
end

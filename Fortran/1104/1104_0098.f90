subroutine s1
type t1     
  integer(8),allocatable::z1
end type
type,extends(t1)::t2  
  integer(8),allocatable::z2
end type
type t
  class(t1),allocatable::z3 
end type
class(t1),allocatable::v
type (t),allocatable::a1,a2(:)
allocate(v,source=t2(-1_8,-2_8))
allocate(a1)                
allocate(a1%z3)
select type(w=> a1%z3)
 type is(t1)
    deallocate(a1%z3)
    a1%z3=v
select type (d=>a1%z3)
  type is (t2)
    if ((d%z1/=-1)) print *,'NG1',d%z1
    if ((d%z2/=-2)) print *,'NG2',d%z2
    d%z1=-11
    d%z2=-12
end select
end select
select type (d=>v    )
  type is (t2)
    if ((d%z1/=-1)) print *,'NG11',d%z1
    if ((d%z2/=-2)) print *,'NG12',d%z2
end select
allocate(a2(2))
a2=a1
select type (d=>a2(1)%z3)
  type is (t2)
    if ((d%z1/=-11)) print *,'NG21',d%z1
    if ((d%z2/=-12)) print *,'NG22',d%z2
end select
select type (d=>a2(2)%z3)
  type is (t2)
    if ((d%z1/=-11)) print *,'NG31',d%z1
    if ((d%z2/=-12)) print *,'NG32',d%z2
end select
end
call s1
print *,'sngg775p : pass'
end

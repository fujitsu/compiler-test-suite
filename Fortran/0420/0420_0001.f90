call s1
print *,'pass'
end
subroutine s1
type t(a)
integer,kind::a
character(:,a),pointer::h
character(:,1),pointer::hh
character(:),pointer::hhh
end type
type(t(1))::t1
allocate(character(2,1):: t1%h)
allocate(character(2):: t1%h)
allocate(character(2,1):: t1%hh)
allocate(character(2):: t1%hh)
allocate(character(2,1):: t1%hhh)
allocate(character(2):: t1%hhh)

if(len(t1%h)/=2) print *,'err',len(t1%h)
end

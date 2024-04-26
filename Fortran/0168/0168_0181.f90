type t(a)
integer,kind::a
character(:),allocatable::c1
character(:,a),allocatable::c2
character(kind=a,len=:),allocatable::c3
end type
type(t(1))::tt1
allocate(tt1%c1,source="1")
allocate(tt1%c2,source="12")
allocate(tt1%c3,source="123")
print *,'pass'
end

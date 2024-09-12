type t(a)
 integer,kind::a
 character(:),allocatable::c1
 character(:,a),allocatable::c2
 character(kind=a,len=:),allocatable::c3
end type
type,extends(t):: t1(b)
 integer,kind::b
 character(:),allocatable::c4
 character(:,a),allocatable::c5
 character(kind=a,len=:),allocatable::c6
 type(t(1)),allocatable::obj
end type

type(t1(1,1))::tt1   
 allocate(tt1%c1,source="1")
 allocate(tt1%c2,source="12")    
 allocate(tt1%c3,source="123")

 allocate(tt1%c4,source="1")
 allocate(tt1%c5,source="12")    
 allocate(tt1%c6,source="123")

 allocate(tt1%obj)
 allocate(tt1%obj%c1,source="1")
 allocate(tt1%obj%c2,source="12")    
 allocate(tt1%obj%c3,source="123")
 if(tt1%obj%c3 .eq. '123' .and. len(tt1%c6) .eq. 3 .and. kind(tt1%c5) .eq. 1 &
     .and. len(tt1%obj%c2) .eq. 2 .and. tt1%obj%c1 .eq. tt1%c1 )then
 print *,'pass'
 else
 print *,'fail'
 endif
 end

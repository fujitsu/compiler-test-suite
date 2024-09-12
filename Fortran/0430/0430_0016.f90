subroutine s1
type t(a)
 integer,kind::a
 character(:,a),pointer::h
 character(:,1),pointer::x
end type
type(t(1))::t1
 allocate(character(0,1):: t1%h)
if(len(t1%h) .ne. 0  ) print *,201
 allocate(character(1,1):: t1%h)
if(len(t1%h) .ne. 1  ) print *,202
 allocate(character(2,1):: t1%h)
if(len(t1%h) .ne. 2  ) print *,203
 allocate(character(2,1):: t1%x)
if(len(t1%x) .eq. 2  ) then
print *,'pass'
else
print *,'fail'
endif
end subroutine 
call s1
end

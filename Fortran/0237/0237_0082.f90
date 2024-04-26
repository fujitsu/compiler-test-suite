subroutine s1
 type x
    integer::x1
 end type
 type(x),pointer::p
 integer,pointer::pp
allocate(p)
 p%x1=1
 pp=>p%x1
 if (.not.associated(pp,p%x1)) print *,101
end
 call s1
 print *,'pass'
end


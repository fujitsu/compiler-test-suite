use, intrinsic :: iso_c_binding
type ty1
 integer,pointer :: i1
end type
integer,target::it1=1
type(ty1),target::ut1
type(ty1),pointer::tp
integer ,pointer :: ip,aip(:,:)
integer :: shape(2)
type(c_ptr)::cc
ut1=ty1(it1)

tp=>ut1

allocate(aip(2,2))
shape = (/2,2/)

cc=c_loc(ut1)
call c_f_pointer(cc,ip)
cc=c_loc(ut1%i1)
call c_f_pointer(cc,ip)
cc=c_loc(ip)
call c_f_pointer(cc,ip)
cc=c_loc(it1)
call c_f_pointer(cc,ip)
cc=c_loc(tp)
call c_f_pointer(cc,ip)
cc=c_loc(tp%i1)
call c_f_pointer(cc,ip)

cc=c_loc(ut1)
call c_f_pointer(cc,tp)
cc=c_loc(ut1%i1)
call c_f_pointer(cc,tp)
cc=c_loc(ip)
call c_f_pointer(cc,tp)
cc=c_loc(it1)
call c_f_pointer(cc,tp)
cc=c_loc(tp)
call c_f_pointer(cc,tp)
cc=c_loc(tp%i1)
call c_f_pointer(cc,tp)

cc=c_loc(ut1)
call c_f_pointer(cc,aip,(/1,2/))
cc=c_loc(ut1%i1)
call c_f_pointer(cc,aip,shape)
cc=c_loc(ip)
call c_f_pointer(cc,aip,shape=(/2,2/))
cc=c_loc(it1)
call c_f_pointer(cc,aip,shape=shape)

print *,'pass'

end

use, intrinsic   :: iso_c_binding
type (c_ptr)     :: cptr

integer(kind = 4)          :: it, ip
logical(kind = 4)          :: lt, lp

target                     :: it, lt
pointer                    :: ip, lp

integer(kind = 4), pointer :: ip2(:)
logical(kind = 4), pointer :: lp2(:)

integer(kind = 4), target  :: it2(1)
logical(kind = 4), target  :: lt2(1)

cptr = c_loc(it)
cptr = c_loc(lt)

cptr = c_loc(ip)
cptr = c_loc(lp)

cptr = c_loc(it2)
cptr = c_loc(lt2)

cptr = c_loc(ip2)
cptr = c_loc(lp2)

end

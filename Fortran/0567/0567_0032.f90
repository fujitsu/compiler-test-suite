type t2(k1,k2)
integer,kind::k1,k2
character(kind=4,len=k1-1)::a(5)
end type

type(t2(4,4))::tlocal
tlocal = tvar()
if(kind(tlocal%a(1)) .ne. 4) print*,101
if(len(tlocal%a(1)) .ne. 3) print*,102,len(tlocal%a(1))
print*,"PASS"

contains
FUNCTION tvar() 
type(t2(4,4))  ::     tvar,tvar2
character(3,4) :: xx= "abc"
tvar2%a = xx
tvar = tvar2

end function 
end program

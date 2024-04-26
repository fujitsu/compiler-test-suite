subroutine s1
integer,pointer:: ps,pa(:)
integer,allocatable:: as,aa(:)
interface
 function tt()
 end function
end interface
procedure(tt),pointer::pp
ps=>null()
pa=>null()
pp=>null()

kx= s11( )
kx= s11(fs(null()) )
kx= s11(ps)
kx= s11(as)

kx= s12( )
kx= s12(fp(null()) )
kx= s12(pp)

kx= s13( )
kx= s13(fa(null()) )
kx= s13(pa)
kx= s13(aa)

kx= s14( )
kx= s14(fa(null()) )
kx= s14(pa)
kx= s14(aa)

kx= s15( )
kx= s15(fa(null()) )
kx= s15(pa)
kx= s15(aa)
if (kx/=0) print *,200
contains
 function fp(p)
 procedure(tt),pointer::p,fp
 fp=>p
 end function
 function fa(p)
 integer,pointer::p(:),fa(:)
 fa=>p
 end function
 function fs(p)
 integer,pointer::p,fs
 fs=>p
 end function

 function s11(n)
  integer,optional :: n
  if (present(n)) print *,101
  s11=0
 end function
 function s12(ss)
  optional :: ss
  interface
    function ss()
    end function
  end interface
  if (present(ss)) print *,102
  s12=0
 end function
 function s13(n)
  integer,optional :: n(:)
  if (present(n)) print *,103
  s13=0
 end function
 function s14(n)
  integer,optional :: n(*)
  if (present(n)) print *,104
  s14=0
 end function
 function s15(n)
  integer,optional :: n(1)
  if (present(n)) print *,105
  s15=0
 end function
end
call s1
print *,'pass'
end

subroutine s1
integer,pointer:: ps,pa(:)
integer,allocatable:: as,aa(:)
interface
 subroutine tt()
 end subroutine
end interface
procedure(tt),pointer::pp
ps=>null()
pa=>null()
pp=>null()

call s11( )
call s11(fs(null()) )
call s11(ps)
call s11(as)

call s12( )
call s12(fp(null()) )
call s12(pp )

call s13( )
call s13(fa(null()) )
call s13(pa)
call s13(aa)

call s14( )
call s14(fa(null()) )
call s14(pa)
call s14(aa)

call s15( )
call s15(fa(null()) )
call s15(pa)
call s15(aa)
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
 subroutine s11(n)
  integer,optional :: n
  if (present(n)) print *,101
 end subroutine
 subroutine s12(ss)
  optional :: ss
  interface
    subroutine ss
    end subroutine
  end interface
  if (present(ss)) print *,102
 end subroutine
 subroutine s13(n)
  integer,optional :: n(:)
  if (present(n)) print *,103
 end subroutine
 subroutine s14(n)
  integer,optional :: n(*)
  if (present(n)) print *,104
 end subroutine
 subroutine s15(n)
  integer,optional :: n(1)
  if (present(n)) print *,105
 end subroutine
end
call s1
print *,'pass'
end

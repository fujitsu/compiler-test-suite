interface
  subroutine t1(nnn)
  interface 
   function nnn()
    integer      :: nnn
   end function
  end interface
  end subroutine
  subroutine t2(iii)
  interface 
   function ifun()
   end function
  end interface
  procedure(ifun),pointer :: iii
  end subroutine
end interface

interface
 function ifun()
 end function
end interface
procedure(ifun),pointer :: kpp
procedure(ifun),pointer :: npp
kpp=>ifun
npp=>ifun
call w(kpp,npp)
call w(kpp=kpp    )
print *,"pass"
contains
subroutine w(kpp,npp)
procedure(ifun),pointer :: ipp
procedure(ifun),pointer :: kpp
procedure(ifun),pointer,optional :: npp
type x
  integer v
  procedure(ifun),pointer,nopass :: ipp
end type
type(x)::z
ipp=>ifun
if (.not.present(npp)) return
call t1(ifun)
call t1(ipp)
call t1(kpp)
call t1(npp)
z=x(2,ifun)
call t1(z%ipp)
if (z%v/=2)print *,101,z%v
if (.not.associated(z%ipp,ifun))print *,301
z=x(3,kpp)
call t1(z%ipp)
if (.not.associated(z%ipp,kpp))print *,302
if (z%v/=3)print *,103,z%v
z=x(4,npp)
call t1(z%ipp)
if (.not.associated(z%ipp,npp))print *,303
if (z%v/=4)print *,104,z%v

call t2(ipp)
call t2(kpp)
call t2(npp)
z=x(2,ifun)
call t2(z%ipp)
if (z%v/=2)print *,101,z%v
if (.not.associated(z%ipp,ifun))print *,401
z=x(3,kpp)
call t1(z%ipp)
if (.not.associated(z%ipp,kpp))print *,402
if (z%v/=3)print *,103,z%v
z=x(4,npp)
call t1(z%ipp)
if (z%v/=4)print *,104,z%v
if (.not.associated(z%ipp,npp))print *,403
end subroutine
end

 function ifun()
  ifun=123
 end function

subroutine t1(nnn)
interface 
 function nnn()
  integer      :: nnn
 end function
end interface
kkk=nnn()
if (kkk/=123)print *,'error-2'
end subroutine

subroutine t2(iii)
interface 
 function ifun()
 end function
end interface
procedure(ifun),pointer :: iii
kkk=iii()
if (kkk/=123)print *,'error-4'
if (iii()/=123)print *,'error-5'
end subroutine

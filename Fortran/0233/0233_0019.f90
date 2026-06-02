print *,'pass'
end
subroutine subaaa()
interface
 function func() result(rst)
  integer :: rst
 end function
 subroutine sub()
 end subroutine
 subroutine sub1(pf)
  interface
   function func() result(rst)
    integer :: rst
   end function
  end interface
  procedure(func)    :: pf
 end subroutine
 subroutine sub2(ps)
  interface
   subroutine sub()
   end subroutine
  end interface
  procedure(sub)     :: ps
 end subroutine
 subroutine sub3(p0)
  procedure()        :: p0
 end subroutine
 subroutine sub4(pi)
  procedure(integer) :: pi
 end subroutine
end interface

procedure(func)    :: pf
procedure(sub)     :: ps
procedure()        :: p0
procedure(integer) :: pi

type t_pf
 procedure(func),nopass,pointer    :: tpf
end type

type t_ps
 procedure(sub),nopass ,pointer    :: tps
end type

type t_p0
 procedure(),nopass     ,pointer   :: tp0
end type

type t_pi
 procedure(integer),nopass ,pointer:: tpi
end type

procedure(func)   ,pointer :: pfp
procedure(sub)    ,pointer :: psp
procedure()       ,pointer :: p0p
procedure(integer),pointer :: pip

type t_pfp
 procedure(func),pointer,nopass    :: tpfp
end type

type t_psp
 procedure(sub),pointer,nopass     :: tpsp
end type

type t_p0p
 procedure(),pointer,nopass        :: tp0p
end type

type t_pip
 procedure(integer),pointer,nopass :: tpip
end type

type(t_pf) :: t1
type(t_ps) :: t2
type(t_p0) :: t3
type(t_pi) :: t4

type(t_pfp) :: t5
type(t_psp) :: t6
type(t_p0p) :: t7
type(t_pip) :: t8

pfp => pf
psp => ps
p0p => p0
pip => pi

t5%tpfp=>pf
t6%tpsp=>ps
t7%tp0p=>p0
t8%tpip=>pi

pfp=>t1%tpf
psp=>t2%tps
p0p=>t3%tp0
pip=>t4%tpi
pfp=>t5%tpfp
psp=>t6%tpsp
p0p=>t7%tp0p
pip=>t8%tpip

t1 = t_pf(pf)
t2 = t_ps(ps)
t3 = t_p0(p0)
t4 = t_pi(pi)

t5 = t_pfp(pf)
t6 = t_psp(ps)
t7 = t_p0p(p0)
t8 = t_pip(pi)

call sub1(t1%tpf)
call sub2(t2%tps)
call sub1(t4%tpi)


end

function func() result(rst)
 integer :: rst
 rst = 1
end function
subroutine sub()
end subroutine
subroutine sub1(pf)
 interface
  function func() result(rst)
   integer :: rst
  end function
 end interface
 procedure(func)    :: pf
end subroutine
subroutine sub2(ps)
 interface
  subroutine sub()
  end subroutine
 end interface
 procedure(sub)     :: ps
end subroutine
subroutine sub3(p0)
 procedure()        :: p0
end subroutine
subroutine sub4(pi)
 procedure(integer) :: pi
end subroutine
   function pf() result(rst)
    integer :: rst
   end function
   function pi() result(rst)
    integer :: rst
   end function
   function p0() result(rst)
    integer :: rst
   end function
   function ps() result(rst)
    integer :: rst
   end function

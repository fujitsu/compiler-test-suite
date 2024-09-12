interface
 function rfunc1(i1) result(rst)
  real (kind = 4) :: i1
  real (kind = 4) :: rst
 end function
 function rfunc2(i2) result(rst)
  real (kind = 8) :: i2
  real (kind = 4) :: rst
 end function
 function func1(pi1p) result(rst1)
  interface
   function rfunc1(i1) result(rst)
    real (kind = 4) :: i1
    real (kind = 4) :: rst
   end function
  end interface
  procedure(rfunc1),pointer :: pi1p
  integer :: rst1
 end function
 function func2(pi2p) result(rst2)
  interface
   function rfunc2(i2) result(rst)
    real (kind = 8) :: i2
    real (kind = 4) :: rst
   end function
  end interface
  procedure(rfunc2),pointer :: pi2p
  integer :: rst2
 end function

end interface

procedure(rfunc1),pointer :: pi1p
procedure(rfunc2),pointer :: pi2p
procedure(func1),pointer :: pf1p
procedure(func2),pointer :: pf2p

integer :: i

pf1p => func1
pf2p => func2

i = pf1p(pi1p)
i = pf2p(pi2p)

if (i.ne.1) print *,'nopass'
print *,'pass'

end

 function rfunc1(i1) result(rst)
  real (kind = 4) :: i1
  real (kind = 4) :: rst
  rst = i1
 end function

 function rfunc2(i2) result(rst)
  real (kind = 8) :: i2
  real (kind = 4) :: rst
  rst = real(i2)
 end function

function func1(pi1p) result(rst1)
 interface
  function rfunc1(i1) result(rst)
   real (kind = 4) :: i1
   real (kind = 4) :: rst
  end function
 end interface
 procedure(rfunc1),pointer :: pi1p
 integer :: rst1
 rst1 = 1
end function

function func2(pi2p) result(rst2)
 interface
  function rfunc2(i2) result(rst)
   real (kind = 8) :: i2
   real (kind = 4) :: rst
  end function
 end interface
 procedure(rfunc2),pointer :: pi2p
 integer :: rst2
 rst2 = 1
end function

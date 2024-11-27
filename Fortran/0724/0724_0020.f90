end

subroutine sub01(di01, dfunc01, defunc01, dpfunc01, dpfunc02, dpfunc03, defunc01p, dpfunc01p, dpfunc02p, dpfunc03p)

interface
 function ofunc01(odi01) result(orst01)
  integer          :: odi01
  character(odi01) :: orst01
 end function
 function dfunc01(ddi01) result(drst01)
  integer          :: ddi01
  character(ddi01) :: drst01
 end function
end interface

integer :: di01

character(di01), external            :: efunc01
procedure(ofunc01)                   :: pfunc01
procedure(dfunc01)                   :: pfunc02
procedure(character(di01))           :: pfunc03

character(di01), external            :: defunc01
procedure(ofunc01)                   :: dpfunc01
procedure(dfunc01)                   :: dpfunc02
procedure(character(di01))           :: dpfunc03

character(di01), external  , pointer :: efunc01p
procedure(ofunc01)         , pointer :: pfunc01p
procedure(dfunc01)         , pointer :: pfunc02p
procedure(character(di01)) , pointer :: pfunc03p

character(di01), external  , pointer :: defunc01p
procedure(ofunc01)         , pointer :: dpfunc01p
procedure(dfunc01)         , pointer :: dpfunc02p
procedure(character(di01)) , pointer :: dpfunc03p

print *,ofunc01(di01)
print *,dfunc01(di01)

print *,efunc01(di01)
print *,pfunc01(di01)
print *,pfunc02(di01)
print *,pfunc03(di01)

print *,defunc01(di01)
print *,dpfunc01(di01)
print *,dpfunc02(di01)
print *,dpfunc03(di01)

print *,efunc01p(di01)
print *,pfunc01p(di01)
print *,pfunc02p(di01)
print *,pfunc03p(di01)

print *,defunc01p(di01)
print *,dpfunc01p(di01)
print *,dpfunc02p(di01)
print *,dpfunc03p(di01)

end subroutine

function ofunc01(odi01) result(orst01)
 integer          :: odi01
 character(odi01) :: orst01
 orst01 = 'ofunc'
end function

function dfunc01(ddi01) result(drst01)
 integer          :: ddi01
 character(ddi01) :: drst01
 drst01 = 'dfunc01'
end function

function efunc01(edi01) result(erst01)
 integer          :: edi01
 character(edi01) :: erst01
 erst01 = 'efunc01'
end function

function pfunc01(pdi01) result(prst01)
 integer          :: pdi01
 character(pdi01) :: prst01
 prst01 = 'pfunc01'
end function

function pfunc02(pdi02) result(prst02)
 integer          :: pdi02
 character(pdi02) :: prst02
 prst02 = 'pfunc02'
end function

function pfunc03(pdi03) result(prst03)
 integer          :: pdi03
 character(pdi03) :: prst03
 prst03 = 'pfunc03'
end function

function defunc01(dedi01) result(derst01)
 integer           :: dedi01
 character(dedi01) :: derst01
 derst01 = 'defunc01'
end function

function dpfunc01(dpdi01) result(dprst01)
 integer           :: dpdi01
 character(dpdi01) :: dprst01
 dprst01 = 'dpfunc01'
end function

function dpfunc02(dpdi02) result(dprst02)
 integer           :: dpdi02
 character(dpdi02) :: dprst02
 dprst02 = 'dpfunc02'
end function

function dpfunc03(dpdi03) result(dprst03)
 integer           :: dpdi03
 character(dpdi03) :: dprst03
 dprst03 = 'pfunc03'
end function

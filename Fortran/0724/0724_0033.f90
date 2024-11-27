interface
 subroutine isub01()
 end subroutine

 function ifunc01() result(irst01)
  procedure(), pointer :: irst01
 end function

 function ifunc02() result(irst02)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst02
 end function
end interface

external                             :: eproc01
procedure()        , pointer         :: pprocp01
procedure(isub01)  , pointer         :: pisub01p

procedure(ifunc01)                   :: pifunc01
procedure(ifunc02)                   :: pifunc02
procedure(ifunc01) , pointer         :: pifunc01p
procedure(ifunc02) , pointer         :: pifunc02p

type ty01
 procedure()       , pointer, nopass :: pprocp01 => null()
end type
type ty02
 procedure(isub01) , pointer, nopass :: pisub01p => null()
end type
type ty03
 procedure(ifunc01), pointer, nopass :: pifunc01p => null()
end type
type ty04
 procedure(ifunc02), pointer, nopass :: pifunc02p => null()
end type

type (ty01) :: tt01
type (ty02) :: tt02
type (ty03) :: tt03
type (ty04) :: tt04

pifunc01p      => pifunc01
pifunc02p      => pifunc02
tt03%pifunc01p => pifunc01
tt04%pifunc02p => pifunc02

pprocp01 => eproc01
pprocp01 => isub01
pprocp01 => pprocp01
pprocp01 => pisub01p
pprocp01 => tt01%pprocp01
pprocp01 => tt02%pisub01p
pprocp01 => ifunc01()
pprocp01 => ifunc02()
pprocp01 => pifunc01()
pprocp01 => pifunc02()
pprocp01 => pifunc01p()
pprocp01 => pifunc02p()
pprocp01 => tt03%pifunc01p()
pprocp01 => tt04%pifunc02p()

tt01 = ty01(eproc01)
tt01 = ty01(isub01)
tt01 = ty01(pprocp01)
tt01 = ty01(pisub01p)
tt01 = ty01(tt01%pprocp01)
tt01 = ty01(tt02%pisub01p)
tt01 = ty01(ifunc01())
tt01 = ty01(ifunc02())
tt01 = ty01(pifunc01())
tt01 = ty01(pifunc02())
tt01 = ty01(pifunc01p())
tt01 = ty01(pifunc02p())
tt01 = ty01(tt03%pifunc01p())
tt01 = ty01(tt04%pifunc02p())

pisub01p => eproc01
pisub01p => isub01
pisub01p => pprocp01
pisub01p => pisub01p
pisub01p => tt01%pprocp01
pisub01p => tt02%pisub01p
pisub01p => ifunc01()
pisub01p => ifunc02()
pisub01p => pifunc01()
pisub01p => pifunc02()
pisub01p => pifunc01p()
pisub01p => pifunc02p()
pisub01p => tt03%pifunc01p()
pisub01p => tt04%pifunc02p()

tt02 = ty02(eproc01)
tt02 = ty02(isub01)
tt02 = ty02(pprocp01)
tt02 = ty02(pisub01p)
tt02 = ty02(tt01%pprocp01)
tt02 = ty02(tt02%pisub01p)
tt02 = ty02(ifunc01())
tt02 = ty02(ifunc02())
tt02 = ty02(pifunc01())
tt02 = ty02(pifunc02())
tt02 = ty02(pifunc01p())
tt02 = ty02(pifunc02p())
tt02 = ty02(tt03%pifunc01p())
tt02 = ty02(tt04%pifunc02p())

end

subroutine isub01()
end subroutine

subroutine eproc01()
end subroutine

function ifunc01() result(irst01)
 procedure(), pointer :: irst01
 irst01 => null()
end function

function ifunc02() result(irst02)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst02
 irst02 => isub01
end function

function pifunc01() result(pirst01)
 procedure(), pointer :: pirst01
 pirst01 => null()
end function

function pifunc02() result(pirst02)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: pirst02
 pirst02 => isub01
end function

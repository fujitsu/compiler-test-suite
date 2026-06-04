interface
 function ifunc01() result(irst01)
  implicit character(3)(i)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst01
 end function
 function ifunc02() result(irst02)
  implicit character(4)(i)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst02
 end function
 subroutine isub01()
 end subroutine
end interface

procedure(ifunc01)          :: pifunc01
procedure(ifunc02)          :: pifunc02
procedure(ifunc01), pointer :: pifunc01p
procedure(ifunc02), pointer :: pifunc02p

type ty01
 procedure(ifunc01), pointer, nopass :: pifunc01p
end type
type ty02
 procedure(ifunc02), pointer, nopass :: pifunc02p
end type

type (ty01) :: tt01
type (ty02) :: tt02

pifunc01p => ifunc01
pifunc02p => ifunc02

tt01 = ty01(ifunc01)
tt02 = ty02(ifunc01)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  001'

tt01 = ty01(pifunc01)
tt02 = ty02(pifunc01)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  002'

tt01 = ty01(pifunc01p)
tt02 = ty02(pifunc01p)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  003'

tt01 = ty01(tt01%pifunc01p)
tt02 = ty02(tt01%pifunc01p)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  004'

tt01 = ty01(ifunc02)
tt02 = ty02(ifunc02)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  005'

tt01 = ty01(pifunc02)
tt02 = ty02(pifunc02)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  006'

tt01 = ty01(pifunc02p)
tt02 = ty02(pifunc02p)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  007'

tt01 = ty01(tt02%pifunc02p)
tt02 = ty02(tt02%pifunc02p)
if (.not.associated(tt01%pifunc01p, tt02%pifunc02p)) print *,'structure  constructor  failed  008'

print *,'pass'

end

function ifunc01() result(irst01)
 implicit character(3)(i)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst01
 irst01 => isub01
end function

function ifunc02() result(irst02)
 implicit character(4)(i)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst02
 irst02 => isub01
end function

function pifunc01() result(irst01)
 implicit character(3)(i)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst01
 irst01 => isub01
end function

function pifunc02() result(irst02)
 implicit character(4)(i)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst02
 irst02 => isub01
end function

subroutine isub01()
end subroutine

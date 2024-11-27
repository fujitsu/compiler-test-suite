interface
 function ifunc01() result(irst01)
  interface
   function ifunc02() result(irst02)
    logical :: irst02
   end function
  end interface
  procedure(ifunc02), pointer :: irst01
 end function
 function ifunc02() result(irst02)
  logical :: irst02
 end function
end interface

procedure(cfunc01), pointer :: pcfunc01p
procedure(ifunc02), pointer :: pifunc02p

pcfunc01p => ifunc01
pifunc02p => pcfunc01p()

if (pifunc02p()) print *,'pass'

contains
 function cfunc01() result(crst01)
  interface
   function ifunc01() result(irst01)
    logical :: irst01
   end function
  end interface
  procedure(ifunc01), pointer :: crst01
  crst01 => ifunc01
 end function
end

function ifunc01() result(irst01)
 interface
  function ifunc02() result(irst02)
   logical :: irst02
  end function
 end interface
 procedure(ifunc02), pointer :: irst01
 irst01 => ifunc02
end function

function ifunc02() result(irst02)
 logical :: irst02
 irst02 = .true.
end function

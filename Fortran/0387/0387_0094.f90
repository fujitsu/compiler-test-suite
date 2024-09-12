interface
 function ifunc01() result(irst01)
  integer   :: irst01
 end function
 function ifunc02() result(irst02)
  real      :: irst02
 end function
 function ifunc03() result(irst03)
  logical   :: irst03
 end function
 function ifunc04() result(irst04)
  complex   :: irst04
 end function
 function ifunc05() result(irst05)
  character :: irst05
 end function
end interface

procedure(integer),   pointer :: pprocp01
procedure(real),      pointer :: pprocp02
procedure(logical),   pointer :: pprocp03
procedure(complex),   pointer :: pprocp04
procedure(character), pointer :: pprocp05

pprocp01 => ifunc01
if (pprocp01().ne.1)          print *, 'type : integer'
nullify(pprocp01)

pprocp02 => ifunc02
if (pprocp02().ne.2.0)          print *, 'type : real'
nullify(pprocp02)

pprocp03 => ifunc03
if (pprocp03().neqv..true.)   print *, 'type : logical'
nullify(pprocp03)

pprocp04 => ifunc04
if (pprocp04().ne.(4.0, 4.0)) print *, 'type : complex'
nullify(pprocp04)

pprocp05 => ifunc05
if (pprocp05().ne.'5')        print *, 'type : character'
nullify(pprocp05)

print *,'pass'

end

function ifunc01() result(irst01)
 integer   :: irst01
 irst01 = 1
end function

function ifunc02() result(irst02)
 real      :: irst02
 irst02 = 2.0
end function

function ifunc03() result(irst03)
 logical   :: irst03
 irst03 = .true.
end function

function ifunc04() result(irst04)
 complex   :: irst04
 irst04 = (4.0, 4.0)
end function

function ifunc05() result(irst05)
 character :: irst05
 irst05 = '5'
end function

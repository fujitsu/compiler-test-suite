function prc01()
 prc01 = 1.0
end function

function ext01()
 ext01 = 2.0
end function

procedure() :: prc01, prc02
external    :: ext01, ext02

procedure(real),  pointer         :: prp01
real, external,   pointer         :: rep01

type ty1
 procedure(real), pointer, nopass :: prp01
end type

type (ty1) :: t1

prp01 => prc01
prp01 => ext01
prp01 => prc02
prp01 => ext02

rep01 => prc01
rep01 => ext01
rep01 => prc02
rep01 => ext02

t1    =  ty1(prc01)
t1    =  ty1(ext01)
t1    =  ty1(prc02)
t1    =  ty1(ext02)

call csub1(prc01)
call csub1(ext01)
call csub1(prc02)
call csub1(ext02)

call csub2(prc01)
call csub2(ext01)
call csub2(prc02)
call csub2(ext02)

call csub3(prc01)
call csub3(ext01)
call csub3(prc02)
call csub3(ext02)

call csub4(prc01)
call csub4(ext01)
call csub4(prc02)
call csub4(ext02)

contains
 subroutine csub1(prp01)
  procedure(real)                :: prp01
 end subroutine
 subroutine csub2(rep01)
  real, external                 :: rep01
 end subroutine
 subroutine csub3(prp02)
  procedure(real)                :: prp02
 end subroutine
 subroutine csub4(rep02)
  real, external                 :: rep02
 end subroutine
end

function prc02()
 prc02 = 3.0
end function

function ext02()
 ext02 = 4.0
end function

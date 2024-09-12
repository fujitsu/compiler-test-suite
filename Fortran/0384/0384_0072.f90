print *,'pass'
end

module mod0
contains
function jfun() result(ii)
entry Jent1() result(ii)
end function
end

module mod
use mod0
contains
function Ifun() result(ii)
procedure(jent1),pointer :: Paa
type t1
 procedure(jent1),pointer,nopass ::ip
end type
type(t1) :: str
entry ENt() result(ii)
paa=>str%ip
end function
end

module moda
use mod0,jent2=>jent1
contains
function Ifun() result(ii)
procedure(jent2),pointer :: Paa
type t1
 procedure(jent2),pointer,nopass ::ip
end type
type(t1) :: str
entry ENt() result(ii)
paa=>str%ip
end function
end






module mod1
use mod0,jent2=>jent1
end

module mod2
use mod1
end
module mod3
use mod1,jent1=>jent2
end

module modb
use mod1,jent1=>jent2
contains
function Ifun() result(ii)
procedure(jent1),pointer :: Paa
type t1
 procedure(jent1),pointer,nopass ::ip
end type
type(t1) :: str
entry ENt() result(ii)
paa=>str%ip
end function
end

module modc
use mod1,jent1=>jent2
use mod3,jent2=>jent1
contains
function Ifun() result(ii)
procedure(jent1),pointer :: Paa
type t1
 procedure(jent2),pointer,nopass ::ip
end type
type(t1) :: str
entry ENt() result(ii)
paa=>str%ip
end function
end

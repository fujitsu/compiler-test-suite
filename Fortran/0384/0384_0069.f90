print *,'pass'
end
module mod
contains
function Ifun() result(ii)
procedure(enT),pointer :: P
type t1
 procedure(eNt),pointer,nopass ::ip
end type
entry ENt() result(ii)
p=>Ent
end function
end

module mod02
contains
function Ifun() result(ii)
procedure(byte),pointer :: P
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
end function
end


module mod03
contains
subroutine Ifun() 
procedure(enT),pointer :: Paaa
type t1
 procedure(eNt),pointer,nopass ::ip
end type
entry ENt() 
paaa=>Ent
end subroutine
end

module mod04
contains
subroutine Ifun()
procedure(enT) :: Paaa
POINTER :: Paaa
type t1
 procedure(eNt),pointer,nopass ::ip
end type
entry ENt()
paaa=>Ent
end subroutine
end

module mod05
contains
subroutine Ifun()
POINTER :: Paaa
procedure(enT) :: Paaa
type t1
 procedure(eNt),pointer,nopass ::ip
end type
entry ENt()
paaa=>Ent
end subroutine
end

module mod06
contains
function Ifun() result(ii)
byte :: Paaa,ii
procedure(),pointer :: Paaa
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
paaa=>Ent
end function
end

module mod07
contains
function Ifun() result(ii)
procedure(),pointer :: Paaa
byte :: Paaa,ii
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
paaa=>Ent
end function
end

module mod08
contains
function Ifun() result(ii)
procedure() :: Paaa
byte :: Paaa,ii
pointer :: Paaa
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
paaa=>Ent
end function
end

module mod09
contains
function Ifun() result(ii)
pointer :: Paaa
procedure() :: Paaa
byte :: Paaa,ii
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
paaa=>Ent
end function
end

module mod10
contains
function Ifun() result(ii)
pointer :: Paaa
byte :: Paaa,ii
procedure() :: Paaa
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
paaa=>Ent
end function
end

module mod11
contains
function Ifun() result(ii)
pointer :: Paaa
byte :: ii
procedure(byte) :: Paaa
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
paaa=>Ent
end function
end

module mod12
contains
function Ifun() result(ii)
byte :: ii
pointer :: Paaa
procedure(byte) :: Paaa
type t1
 procedure(byte),pointer,nopass ::ip
 byte :: sssss
end type
entry ENt() result(ii)
byte :: type_check
paaa=>Ent
end function
end

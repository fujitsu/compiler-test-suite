procedure(integer(kind=1)) ,pointer :: ip01
procedure(integer(kind=2)) ,pointer :: ip02
procedure(integer(kind=4)) ,pointer :: ip03
procedure(integer(kind=8)) ,pointer :: ip04
procedure(logical(kind=1)) ,pointer :: ip05
procedure(logical(kind=2)) ,pointer :: ip06
procedure(logical(kind=4)) ,pointer :: ip07
procedure(logical(kind=8)) ,pointer :: ip08
procedure(real(kind= 4)  ) ,pointer :: ip09
procedure(real(kind= 8)  ) ,pointer :: ip10
procedure(real(kind=16)  ) ,pointer :: ip11
procedure(complex(kind=4)) ,pointer :: ip12
procedure(complex(kind=8)) ,pointer :: ip13
procedure(complex(kind=16)),pointer :: ip14
procedure(character(1)   ) ,pointer :: ip15
procedure(character(1,1) ) ,pointer :: ip16
procedure(double precision),pointer :: ip17
procedure(byte           ) ,pointer :: ip18
procedure(character(kind=1,len=1)) ,pointer :: ip19
procedure(character(len=1,kind=1)) ,pointer :: ip20
procedure(character(len=kind(1_1),kind=1)) ,pointer :: ip21
print *,"pass"
end

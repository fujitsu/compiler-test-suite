
intrinsic                           :: acos, dacos, iabs
procedure(integer(kind=4)), pointer :: pi4p
procedure(real(kind=4))   , pointer :: pr4p
procedure(real(kind=8))   , pointer :: pr8p
integer(kind=4)                     :: ii04
real(kind=4)                        :: rr04
real(kind=8)                        :: rr08

procedure(iabs)           , pointer :: piabs   
procedure(acos)           , pointer :: pacos   
procedure(dacos)          , pointer :: pdacos  

pi4p => iabs     
pr4p => acos     
pr8p => dacos    

piabs  => iabs   
pacos  => acos   
pdacos => dacos  

ii04 = 4
rr04 = 0.0
rr08 = 0.0

print *,pi4p(ii04)    
print *,pr4p(rr04)    
print *,pr8p(rr08)    

print *,piabs(ii04)   
print *,pacos(rr04)   
print *,pdacos(rr08)  

end

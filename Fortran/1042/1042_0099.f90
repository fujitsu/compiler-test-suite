type ydef
 integer scalar
 integer array(2)
end type
type xdef
 integer scalar
 integer array(2)
 type(ydef)::ty(2)
end type

 type (xdef),target::tx(2)
 type (xdef),pointer::tp(:)
 integer,pointer::ip
 integer,pointer::idp(:)

 tp => tx

 ip  => tp(1)%array(1)
 ip = 1
 idp => tp(1)%array
 idp = 1
 idp => tp%array(1)
 idp = 1


 ip=>tp(1)%ty(1)%array(1)
 ip = 1
 idp=>tp%ty(1)%array(1)
 idp = 1
 idp=>tp(1)%ty%array(1)
 idp = 1
 idp=>tp(1)%ty(1)%array
 idp = 1


if ( tp(1)%array(1) == 1 .and. &
     tp(1)%ty(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1)%array(1),tx(1)%ty(1)%array(1)
 print *,tp(1)
 print *,tx(1)
 print *,tp(2)
endif
end

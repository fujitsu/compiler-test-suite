type ydef
 integer scalar
 integer array(2,2,2)
end type
type xdef
 integer scalar
 integer array(2,2,2)
 type(ydef)::ty(2,2,2)
end type

 type (xdef),target::tx(2,2,2)
 type (xdef),pointer::txp(:,:,:)
 integer,pointer::ip
 integer,pointer::idp(:,:,:)

 txp => tx

 txp(1,1,1)%array(1,1,1) = 1
 txp(1,1,1)%array = 1
 txp%array(1,1,1) = 1

 ip => txp(1,1,1)%ty(1,1,1)%array(1,1,1)
 ip = 1
 txp%ty(1,1,1)%array(1,1,1) = 1
 idp => txp(1,1,1)%ty%array(1,1,1)
 idp = 1
 idp => txp(1,1,1)%ty(1,1,1)%array
 idp = 1

if ( txp(1,1,1)%array(1,1,1) == 1 .and. &
     txp(1,1,1)%ty(1,1,1)%array(1,1,1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(1,1,1)
 print *,tx(2,2,2)
endif
end

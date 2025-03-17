type ydef
 integer scalar
 integer array(2)
end type
type xdef
 integer scalar
 integer array(2)
 type(ydef)::ty(2)
end type

 type (xdef)::tx(2)
 integer::i
 call sub(i)

 tx(i:1)%scalar   = 1
 tx%scalar   = 1

 tx(1)%array(i:1) = 1
 tx(i:1)%array(1) = 1

 tx(1)%ty(i:1)%scalar   = 1
 tx(i:1)%ty(1)%scalar   = 1
 tx(i:1)%ty(1)%scalar   = 1

 tx(i:1)%ty(1)%array(1) = 1
 tx(1)%ty(i:1)%array(1) = 1
 tx(1)%ty(1)%array(i:1) = 1

if ( tx(1)%scalar  == 1 .and. tx(1)%array(1) == 1 .and. &
     tx(1)%ty(1)%scalar  == 1 .and. tx(1)%ty(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,tx(i:1)
 print *,tx(2)
endif
end
subroutine sub(i)
integer::i
i=1
end subroutine

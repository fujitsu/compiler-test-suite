type x
 integer scalar
 integer array(2)
end type

 type (x)::ts

 ts%scalar   = 1
 ts%array(1) = 1
 ts%array    = 1

 if ( ts%scalar  == 1 .and. ts%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ts
endif
end

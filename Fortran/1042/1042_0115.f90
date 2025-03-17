type x
 sequence
 integer scalar
 integer array(2)
end type

 type (x)::ta(2)
 integer::v(2)
 v=(/1,2/)

 ta%scalar   = 1
 ta(1)%array(v) = 1
 ta(2)%array(v) = 1

if ( ta(1)%scalar  == 1 .and. ta(1)%array(1) == 1 ) then
  print *,'pass'
else
  print *,'ng'
 print *,ta(1)
 print *,ta(2)
endif
end

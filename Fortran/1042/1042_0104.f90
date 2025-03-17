type x
 integer scalar
 integer array(2,2,2)
end type

 type (x)::ta(2)

 ta(1)%scalar   = 1
 ta(1)%array(1,1,1) = 1
 ta(1)%array(:,:,:)    = 1
 ta(1)%array(:,:,2)    = 1
 ta(1)%array(:,2,:)    = 1
 ta(1)%array(2,:,:)    = 1
 ta(1)%array(:,2,2)    = 1
 ta(1)%array(2,:,2)    = 1
 ta(1)%array(2,2,:)    = 1
 ta(1)%array    = 1

 if ( ta(1)%scalar   == 1 .and. ta(1)%array(1,1,1) == 1 ) then
 print *,'pass'
 else
 print *,ta(1)
 print *,ta(2)
 endif
end

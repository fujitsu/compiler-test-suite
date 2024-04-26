integer,target :: tgt(4,5,3)
logical,target :: tt(2)
character(4),target :: ch(3)
tgt = 23
tt  = .false.
ch  = "fail"

block
 integer,pointer :: ip(:,:,:)
 logical,pointer :: lp(:)
 character(:),pointer :: cp(:)

 ip=>tgt
 lp=>tt
 cp=>ch

 ip = 12
 lp = .true.
 ch = "pass"

select case(ip(2,2,3))
case (1)
 print*,101
case(12)
 block
 integer :: temp
 temp = 2
 ip(3,3,2) = temp
 select case(ip(3,3,2))
 case(2)
  ip(3,3,2) = 12
 case default
  print*,103
 end select
 end block
case default
 print*,102
end select
end block

if(all(tgt==12) .and. all(tt .eqv. .true.)) print*,ch(2)

end

 call s1
 print *,'pass'
 end
subroutine s1
       pointer(ip1,a1)
       integer a1(*)
       pointer(ip2,a2(*))
       integer a2
 integer b1(3),b2(3)
 ip1= loc(b1)
 ip2= loc(b2)
 data b1/11,12,13/
 data b2/21,22,23/
 do ix=1,3
  if (a1(ix)/=ix+10)print *,'fail'
  if (a2(ix)/=ix+20)print *,'fail'
 end do
end

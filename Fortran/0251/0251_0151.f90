integer :: a = 2
if(fun(a) == 1) print*,'pass'

contains
function fun(d)
integer :: d,fun
block
 integer :: j(d),jj(d+1)
 block
 integer :: k(d),kk(1+d)
 block
  integer :: l(d),ll(d+d)
  l=5
  ll=55
  if(any(l/=5)) print*,104,l
  if(size(l)/=2) print*,204
  if(any(ll/=55)) print*,304
  if(size(ll)/=4) print*,404
 end block
 block
  integer :: l2(d),p2(d*2),q2(10-d*2)
  l2=8
  p2=3
  q2=7
  if(any(l2/=8)) print*,103
  if(size(l2)/=2) print*,203
  if(any(p2/=3)) print*,303,p2
  if(size(p2)/=4) print*,403
  if(any(q2/=7)) print*,503
  if(size(q2)/=6) print*,603
 end block
  k=7
  if(any(k/=7)) print*,102
  if(size(k)/=2) print*,202
  kk=77
  if(any(kk/=77)) print*,302
  if(size(kk)/=3) print*,402
 end block

 j = 2
 if(any(j/=2)) print*,101
  if(size(j)/=2) print*,201
 jj = 22
 if(any(jj/=22)) print*,301
  if(size(jj)/=3) print*,401

fun=1
end block
end function
end


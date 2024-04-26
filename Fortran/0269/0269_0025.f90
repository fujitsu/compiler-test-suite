call sub()
contains
subroutine sub()
integer,parameter :: ii(2) = [1,2]
integer,parameter :: jj2 = 2
integer :: jj(3) = 20
integer::crr(8)
  crr = [(jj,integer::jj=1,2),jj(2), (jj2,integer::jj2=1,2),ii(jj2), (jj,integer::jj=1,2)]
  if(any(crr /= [1, 2, 20, 1, 2, 2, 1, 2]))print*,101

print*,"PASS"
end
end


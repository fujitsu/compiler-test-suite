call sub()
contains
subroutine sub()
integer,parameter :: ii(2) = [1,2]
integer,parameter :: jj = 2
integer :: arr(4)
integer :: crr(6)

data ((arr(ii+jj-1),integer::jj=1,2),crr(jj+ii),integer::ii=1,3,2)/3,4,7,8,9,10/
 if(any(arr /= [3,4,8,9])) print*,101
 if(crr(3) /=7 )print*,102
 if(crr(5) /=10)print*,103
 if(any(ii /=[1,2]))print*,104
 print*,"PASS"
end
end


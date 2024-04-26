interface
subroutine sub()
end subroutine
end interface

call sub()
end

subroutine sub()
integer :: i,j,k=2, counter=0

do j = 1,4
 b1: block
  integer :: bb(j+1)
   do i=1,j+1
    bb(i) = i+1
    b2: block
      integer :: dd(j+2)
      dd(i) = i+2
      counter = counter+1
      if (i==j) exit b1
      dd(i) = dd(i)+2
    end block b2
    bb(i) = bb(i)+1
  end do
 end block b1
end do
if(counter /= 10) print*,"101", counter

a1: block
  a2: block
   integer :: ff(k+2)
   k = 3
   exit a1
  end block a2
  k = 4
  print*, "102"
end block a1
if(k /= 3) print*, "103"
print*, "PASS"
end

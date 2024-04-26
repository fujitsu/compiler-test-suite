call sub()
print*, "PASS"

contains
subroutine sub()
integer,allocatable :: arr(:)
allocate(arr(3))
arr = 0

b1: block
 d1: do i=1,3
 b2: block
  i1:if (i == 1) then
   arr = i
   exit b2
  else
   arr = 2
   goto 100
  endif i1
  arr = 21
  print*, "101"
 end block b2

 100 arr = 3
 end do d1
end block b1
if(all(arr == 21)) print*,"102"
if(all(arr /= 3)) print*,"103", arr
end 
end

subroutine foo(pc1, pc2, pc3, pm)
  integer(kind=4),dimension(64) :: pc1, pc2, pc3
  real(kind=8),dimension(64) :: pm

  do i=1,64
     if (pm(i) .gt. 0) then
        pc1(i) = pc2(i) + pc3(i)
     end if
  end do
  if (pc1(i-1) .eq. 131) then
    print *, "ok"
  endif
end subroutine foo

integer(kind=4),dimension(64) :: pc1, pc2, pc3
real(kind=8),dimension(64) :: pm
integer i
do i =1,64
  pc1(i)=i
  pc2(i)=i+1
  pc3(i)=i+2
  pm(i)=i
end do
call foo(pc1, pc2, pc3, pm)
end

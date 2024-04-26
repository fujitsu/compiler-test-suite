program main
integer(kind=4) :: i4data
integer(kind=8) :: i8data,i
integer(kind=4) :: s, ifunc

s = 0
i4data = ifunc(2)
i8data = 1_8
if (i4data /= 0) then
  s = s + 1
  do i=1_8,i8data,1_8
    s = s + 1
  enddo
endif
if (i4data == 0) then
  s = s + 1
endif
if (s == 2) then
  print *,"ok"
else
  print *,"ng"
endif

end program

function ifunc(i)
integer i
ifunc = i
end function

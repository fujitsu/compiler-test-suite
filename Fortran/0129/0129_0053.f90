
program main
integer,parameter :: ians=203
integer,parameter :: n=200
real(8),dimension(1:n+3) :: a,b,c
data a/203*0/, b/203*1/, c/203*2/

a = 1.
b = 1.
c = 1.
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program

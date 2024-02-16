program main
integer,parameter::N=100
real, dimension(1:N)::maxary,minary

call init_ary(maxary,minary,N)
call max_reduction(maxary,N)
call min_reduction(minary,N)

end program

subroutine init_ary(mxa,mia,N)
integer N
real, dimension(1:N)::mxa,mia

mxa = (/(real(mod(i,11))/(real(mod(i,7)+1)),i=1,N)/)
mia = (/(real(mod(i,17))/(real(mod(i,11)+1)),i=1,N)/)
end subroutine

subroutine max_reduction(mxa,N)
integer N
real, dimension(1:N)::mxa
real maxd
integer res
integer,parameter::ANS=10

maxd = 0.
do i=1,N
  maxd = max(maxd, mxa(i))
enddo

res = int(maxd)

if (res == ANS) then
  print *,'OK'
else
  print *,'NG ',res
endif

end subroutine

subroutine min_reduction(mia,N)
integer N
real, dimension(1:N)::mia
real mind
integer res
integer,parameter::ANS=0

mind = 0.
do i=1,N
  mind = min(mind, mia(i))
enddo

res = int(mind)

if (res == ANS) then
  print *,'OK'
else
  print *,'NG ',res
endif

end subroutine

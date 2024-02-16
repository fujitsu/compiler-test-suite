program main
integer,parameter::N=100
real, dimension(1:N)::addary,subary

call init_ary(addary,subary,N)
call add_reduction(addary,N)
call sub_reduction(subary,N)

end program

subroutine init_ary(ada,sba,N)
integer N
real, dimension(1:N)::ada,sba

ada = (/(real(mod(i,11))/(real(mod(i,7)+1)),i=1,N)/)
sba = (/(real(mod(i,17))/(real(mod(i,11)+1)),i=1,N)/)
end subroutine

subroutine add_reduction(ada,N)
integer N
real, dimension(1:N)::ada
real addd
integer res
integer,parameter::ANS=186

addd = 0.
do i=1,N
  addd = addd + ada(i)
enddo

res = int(addd)

if (res == ANS) then
  print *,'OK'
else
  print *,'NG ',res
endif
end subroutine

subroutine sub_reduction(sba,N)
integer N
real, dimension(1:N)::sba
real subd
integer res
integer,parameter::ANS=-231

subd = 0.
do i=1,N
  subd = subd - sba(i)
enddo

res = int(subd)
if (res == ANS) then
  print *,'OK'
else
  print *,'NG ',res
endif
end subroutine

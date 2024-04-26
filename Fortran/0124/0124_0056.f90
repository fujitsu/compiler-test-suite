
integer, parameter :: N=20
real(kind=16),dimension(1:N) :: a

call ini(a,N)
call ddd(i)

res1 = sum(a)

do j=1, N
  a(i) = a(i) - 1._16
  if (j>19) then
    a(j) = a(j) + 2._16
  endif
enddo

res2 = sum(a)*(-1._16)+2._16

if (res1==res2) then
  print *,"OK"
else
  print *,"NG"
  print *,"array=",a
  print *,"res1=",res1,",res2=",res2
endif

end

subroutine ini(a,N)
real(kind=16),dimension(1:N) :: a
integer  N
  a = (/(real(mod(i,2)),i=1,N)/)
end subroutine

subroutine ddd(i)
integer i
  i = 4
  i = iii(i,i*i)
end subroutine 

function iii(i,s)
integer i,s
  i = s
  iii = i
end function

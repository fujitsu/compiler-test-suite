!

integer, parameter :: N=20
real(kind=4),dimension(1:N) :: a

call ini(a,N)

res1 = sum(a)*3._4

do j=1, N-2
  i = j + 2
  a(i) = a(i) - 1._4
  a(j) = a(j) + 2._4
enddo

res2 = sum(a)+2._4

if (res1==res2) then
  print *,"OK"
else
  print *,"NG ","array=",a,",res1=",res1,",res2=",res2
endif

end

subroutine ini(a,N)
real(kind=4),dimension(1:N) :: a
integer  N
  a = (/(real(mod(i,2)),i=1,N)/)
end subroutine

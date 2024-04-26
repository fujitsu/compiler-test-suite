
integer, parameter :: N=20
real(kind=4),dimension(1:N) :: a,b,c,d,e

call ini(a,N)
call ini(b,N)
call ini(c,N)
call ini(d,N)
call ini(e,N)
call ddd(i)

res1 = sum(a+b+c+d+e) + 40._4
k = 1
do j=1, N
  if (j>15) then
    k = k + 1
  endif
  e(j) = e(j) - 1._4
  a(i) = a(i) - 1._4
  c(i) = c(i) - 1._4
  b(j) = b(j) - 2._4
  d(k) = d(k) + 1._4
  a(j) = a(j) + 2._4
  c(j) = c(j) + 3._4
  d(j) = d(j) - 2._4
  b(i) = b(i) + 1._4
  e(i) = e(i) + 2._4
enddo

res2 = sum(a+b+c+d+e)

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

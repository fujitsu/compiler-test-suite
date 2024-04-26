
integer, parameter :: N=20
real(kind=4),dimension(1:N) :: a, b
equivalence (a(1),b(10))

call ini(a,N)
call ini(b,N)
call ddd(i)

res1 = sum(a+b)*3._4 +4._4

do j=1, N
  a(i) = a(i) - 1._4
  b(j) = b(j) + 2._4
enddo

res2 = sum(a+b)

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

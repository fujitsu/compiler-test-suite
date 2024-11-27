real, dimension(1:10) :: a,b
real r1,r2

call init_d_1(a,b)
r1 = dot_product(a,b)
r3 = sum(a)

call init_d_2(a,b)
r2 = dot_product(a,b)

if (r3>0) then
  if (r1 - r2 <= 0.0000039_4) then
    print *,'ok'
  else
    print *,'ng'
    print *,r1,r2
  endif
else
  print *,'ng'
  print *,r3
endif
end

subroutine init_d_1(a,b)
real, dimension(1:10) :: a,b

a = (/(real(i)/3.0,i=1,10)/)
b = (/(real(10-i+1)/3.0,i=1,10)/)
return

entry init_d_2(a,b)

a = (/(real(i)/3.0,i=1,10)/)
b = (/(real(10-i+1)/3.0,i=1,10)/)

end subroutine

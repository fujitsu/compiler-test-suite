program main
real*16 :: a,b
a = .1
do while (a<1.1)
  a = a + 0.1
  b = a + spacing(a)
  if (a.eq.b) write(35,*) 'a= ', a, 'failed, spacing(a)= ', spacing(a)
end do
print *,'pass'
end

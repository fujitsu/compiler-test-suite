real,dimension(500000):: x, y
real in, pai

call random_seed
call random_number(x)
call random_number(y)

in = 0.0
do i=1, 500000
   if(sqrt(x(i)**2+y(i)**2).le.1.0) in = in+1.0
enddo

pai = in/500000.0*4.0

if(pai.gt.3.1 .and. pai.lt.3.18) then
   print *, ': ok'
else
   print *, 'ng', pai
endif
end

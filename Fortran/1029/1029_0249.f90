integer size
parameter(size=4)
logical a, b, c, y(size)
real,dimension(size):: x

call random_seed
call random_number(x)

do i=1, size
   if(x(i).ge.0.5) then
      y(i) = .true.
   else
      y(i) = .false.
   endif
enddo

if(y(1).and.y(2).or.y(3).and.y(4)) then
   a = .true.
else
   a = .false.
endif

if(.not.(y(1).and.y(2).or.y(3).and.y(4))) then
   b = .false.
else
   b = .true.
endif

if(.not.(.not.(y(1).and.y(2).or.y(3).and.y(4)))) then
   c = .true.
else
   c = .false.
endif

if((a.eqv.b) .and. (b.eqv.c)) then
   print *, ': ok'
else
   print *, 'ng', a, b, c
endif
end

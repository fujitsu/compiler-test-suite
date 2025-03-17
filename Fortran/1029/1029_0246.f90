logical a, b, c
real,dimension(4):: x

call random_seed
call random_number(x)

if(x(1).gt.x(2) .or. x(1).lt.x(2) .and. x(3).lt.x(4)) then
   a = .true.
else
   a = .false.
endif

if(.not.(x(1).gt.x(2) .or. x(1).lt.x(2) .and. x(3).lt.x(4))) then
   b = .false.
else
   b = .true.
endif

if(.not.(.not.(x(1).gt.x(2) .or. x(1).lt.x(2) .and. x(3).lt.x(4)))) then
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

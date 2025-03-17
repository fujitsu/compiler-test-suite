real,dimension(5):: x
logical x1, x2

call random_seed()
call random_number(x)

x1 = .false.
x2 = .false.
if((x(1).gt.0.4 .and. x(1).lt.0.6) .or. &
   (x(2).gt.0.4 .and. x(2).lt.0.6) .or. &
   (x(3).gt.0.4 .and. x(3).lt.0.6) .or. &
   (x(4).gt.0.4 .and. x(4).lt.0.6) .or. &
   (x(5).gt.0.4 .and. x(5).lt.0.6)) x1 = .true.

if(.not.((x(1).gt.0.4 .and. x(1).lt.0.6) .or. &
         (x(2).gt.0.4 .and. x(2).lt.0.6) .or. &
         (x(3).gt.0.4 .and. x(3).lt.0.6) .or. &
         (x(4).gt.0.4 .and. x(4).lt.0.6) .or. &
         (x(5).gt.0.4 .and. x(5).lt.0.6))) x2 = .true.

if(x1 .eqv. x2) then
   print *, 'ng'
else
   print *, ': ok'
endif
end

logical a, b, c, y(5)
real,dimension(5):: x

call random_seed
call random_number(x)

do i=1, 5
   if(x(i).ge.0.5) then
      y(i) = .true.
   else
      y(i) = .false.
   endif
enddo

if(y(1).and.(y(2).and.(y(3).or.y(4).and.y(5)))) then
   a = .true.
else
   a = .false.
endif

if(.not.(y(1).and.(y(2).and.(y(3).or.y(4).and.y(5))))) then
   b = .false.
else
   b = .true.
endif

if(.not.(.not.(y(1).and.(y(2).and.(y(3).or.y(4).and.y(5)))))) then
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

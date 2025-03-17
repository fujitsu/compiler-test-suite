real,dimension(1000):: x
integer i
logical func, l

call random_seed()

l = .false.
do i=1, 1000
   call random_number(x)
   l = func(x)
enddo

if(l) then
  print *, 'ng'
else
  print *, ': ok'
endif
end

logical function func(x)
real,dimension(1000):: x
integer up, down

func = .false.

up = 0
down = 0
do i=2, 1000
  if(x(i-1).lt.x(i)) then
    up = up+1
  else
    down = down+1
  endif
enddo

if((down+up) .ne. 999) func = .true.
end

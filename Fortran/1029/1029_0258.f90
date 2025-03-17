real,dimension(200000):: x
logical func, l
integer err

l = .false.
call random_seed()
call random_number(x)

err = 0
do i=10, 200000
  l = func(x, i)
  if(l.eqv..false.) err = err+1
enddo

if(err .eq. 0) then
  print *, ': ok'
else
  print *, 'ng'
endif
end

logical function func(x, i)
real,dimension(200000):: x
integer i
logical a, b

func = .false.
if(x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
   x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6).and. &
   x(i-6).gt.x(i-7).and.x(i-7).gt.x(i-8).and.x(i-8).gt.x(i-9) .or. &
   x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
   x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6).and. &
   x(i-6).gt.x(i-7).and.x(i-7).gt.x(i-8) .or. &
   x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
   x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6).and. &
   x(i-6).gt.x(i-7) .or. &
   x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
   x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6) .or. &
   x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
   x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5) .or. &
   x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
   x(i-3).gt.x(i-4) .or. &
   x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3) .or. &
   x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2) .or. &
   x( i ).gt.x(i-1)) then
  a = .true.
else
  a = .false.
endif

if(.not.(x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
         x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6).and. &
         x(i-6).gt.x(i-7).and.x(i-7).gt.x(i-8).and.x(i-8).gt.x(i-9) .or. &
         x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
         x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6).and. &
         x(i-6).gt.x(i-7).and.x(i-7).gt.x(i-8) .or. &
         x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
         x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6).and. &
         x(i-6).gt.x(i-7) .or. &
         x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
         x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6) .or. &
         x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
         x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5) .or. &
         x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).and. &
         x(i-3).gt.x(i-4) .or. &
         x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3) .or. &
         x( i ).gt.x(i-1).and.x(i-1).gt.x(i-2) .or. &
         x( i ).gt.x(i-1))) then
  b = .false.
else
  b = .true.
endif

if(a.eqv.b) func = .true.
end

real,dimension(200000):: x
logical l1, l2
integer err

call random_seed()
call random_number(x)

err = 0
do i=10, 200000
  call sub(x, i, l1, l2)
  if(l1.neqv.l2) err = err+1
enddo

if(err .eq. 0) then
  print *, ': ok'
else
  print *, 'ng'
endif
end

subroutine sub(x, i, l1, l2)
real,dimension(200000):: x
integer i
logical l1, l2

if(x(i  ).gt.x(i-1).and.x(i-1).gt.x(i-2).or. &
   x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3).or. &
   x(i-2).gt.x(i-3).and.x(i-3).gt.x(i-4).or. &
   x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5).or. &
   x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6).or. &
   x(i-5).gt.x(i-6).and.x(i-6).gt.x(i-7).or. &
   x(i-6).gt.x(i-7).and.x(i-7).gt.x(i-8).or. &
   x(i-7).gt.x(i-8).and.x(i-8).gt.x(i-9).or. &
   x(i-8).gt.x(i-9).and.x(i-9).gt.x(i  )) then
  l1 = .true.
else
  l1 = .false.
endif

l2 = .false.
if(x(i  ).gt.x(i-1).and.x(i-1).gt.x(i-2)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-1).gt.x(i-2).and.x(i-2).gt.x(i-3)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-2).gt.x(i-3).and.x(i-3).gt.x(i-4)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-3).gt.x(i-4).and.x(i-4).gt.x(i-5)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-4).gt.x(i-5).and.x(i-5).gt.x(i-6)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-5).gt.x(i-6).and.x(i-6).gt.x(i-7)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-6).gt.x(i-7).and.x(i-7).gt.x(i-8)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-7).gt.x(i-8).and.x(i-8).gt.x(i-9)) then
    l2 = .true.
    return
else
    l2 = .false.
endif
if(x(i-8).gt.x(i-9).and.x(i-9).gt.x(i  )) then
    l2 = .true.
    return
else
    l2 = .false.
endif
end

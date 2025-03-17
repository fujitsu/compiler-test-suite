logical a, b
integer e

e = 0
do i=1, 2
  do j=1, 2
    a = .false.
    b = .false.
    if(i.eq.2) a = .true.
    if(j.eq.2) b = .true.
    if(i.eq.1 .and. j.eq.1) then
      if(.not.(a.and..not.b)) e = e+1
    endif
    if(i.eq.1 .and. j.eq.2) then
      if(.not.(a.and..not.b)) e = e+10
    endif
    if(i.eq.2 .and. j.eq.1) then
      if(.not.(a.and..not.b)) e = e+100
    endif
    if(i.eq.2 .and. j.eq.2) then
      if(.not.(a.and..not.b)) e = e+1000
    endif
  enddo
enddo

if(e .eq. 1011) then
  print *, ': ok'
else
  print *, 'ng'
endif
end

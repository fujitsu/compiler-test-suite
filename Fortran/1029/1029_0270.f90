call sub()
print *, ': ok'
end

subroutine sub2(l1, l2, l3, l4, l5, l6, l7, l8)
logical l1, l2, l3, l4, l5, l6, l7, l8
logical r1, r2

if(l1.and.l2.or.l3.and.l4.or..not.(l5.and.l6.or.l7.and.l8)) then
  r1 = .true.
else 
  r1 = .false.
endif
if(.not.(l1.and.l2.or.l3.and.l4.or..not.(l5.and.l6.or.l7.and.l8))) then
  r2 = .true.
else 
  r2 = .false.
endif

if(r1.eqv.r2) print *, 'ng: ', l1, l2, l3, l4, l5, l6, l7, l8, r1, r2
end

subroutine sub()
integer i1, i2, i3, i4, i5, i6, i7, i8
logical l1, l2, l3, l4, l5, l6, l7, l8

do i1=1, 2
 do i2=1, 2
  do i3=1, 2
   do i4=1, 2
    do i5=1, 2
     do i6=1, 2
      do i7=1, 2
       do i8=1, 2
        l1 = .false.
        l2 = .false.
        l3 = .false.
        l4 = .false.
        l5 = .false.
        l6 = .false.
        l7 = .false.
        l8 = .false.
        if(i1.eq.2) l1 = .true.
        if(i2.eq.2) l2 = .true.
        if(i3.eq.2) l3 = .true.
        if(i4.eq.2) l4 = .true.
        if(i5.eq.2) l5 = .true.
        if(i6.eq.2) l6 = .true.
        if(i7.eq.2) l7 = .true.
        if(i8.eq.2) l8 = .true.
        call sub2(l1, l2, l3, l4, l5, l6, l7, l8)
       end do
      end do
     end do
    end do
   end do
  end do
 end do
end do
end

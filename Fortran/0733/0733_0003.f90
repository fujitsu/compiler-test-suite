do i=1,6
select case (i)
  case (4:2)
   write (1,*)4,2,i
  case (3)
   write (1,*)'3',i
  case (4:5)
   write (1,*)4,5,i
end select
end do
rewind 1
read(1,*) i1,i2;if (any((/i1,i2/)/=3))print *,'err1'
read(1,*) i1,i2,i3;if (any((/i1,i2,i3/)/=(/4,5,4/)))print *,'err2'
read(1,*) i1,i2,i3;if (any((/i1,i2,i3/)/=(/4,5,5/)))print *,'err3'
print *,'pass'
end

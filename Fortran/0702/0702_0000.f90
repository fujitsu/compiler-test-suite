program main

 implicit none
 integer i1,i2,i3,i4,i5

 call sub1(i1)
 call sub2(i2)
 call sub3(i3)
 call sub4(i4)
 call sub5(i5)
 call sub1(i1)
 call sub2(i2)
 call sub3(i3)
 call sub4(i4)
 call sub5(i5)

 if (i1==i2 .and. i2==i3 .and. i3==i4 .and. i4==i5 .and. i5==2) then
   print *,'*** pass ***'
 else
   print *,'+++ err +++'
 endif

end

subroutine sub1(i1)
 integer i1
 save
 save
 data i/0/
 i=i+1
 i1 = i
end 

subroutine sub2(i2)
 integer i2
 save i
 save
 data i/0/
 i=i+1
 i2 = i
end

subroutine sub3(i3)
 integer i3
 save
 save i
 data i/0/
 i=i+1
 i3 = i 
end

subroutine sub4(i4)
 integer i4
 save 
 integer ,save :: i
 data i/0/
 i=i+1
 i4 = i 
end

subroutine sub5(i5)
 integer i5
 integer ,save :: i
 save 
 data i/0/
 i=i+1
 i5 = i
end

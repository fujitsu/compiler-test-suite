  call ss1
print *,'pass'
 end
 subroutine ss1
 integer*1 i1
   integer  a(10)
   a=1
   i=2
   forall(i1=i:10:i)
   a(i1)=i1
   endforall
   if (any((/(a(i1),i1=i,10,i)/)/=(/2,4,6,8,10/)))write(6,*) "NG"
   if (any((/(i1,i1=i,10,i)/)/=(/2,4,6,8,10/)))write(6,*) "NG"
   do i1=i,10,i
   end do
   if (i1/=12) write(6,*) "NG"
  end

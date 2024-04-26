integer,target::a(3)
a=[1,2,3]
call sub01( a(1:2) , a(2:3) )
 if (a(1)/=1) print *,201
 if (a(2)/=4) print *,202
 if (a(3)/=5) print *,203
print *,'pass'
contains
 subroutine sub01( a1 , a2)
 integer,target :: a1(:)
 integer,target :: a2(2)
 do k=1,3
   if (k==1) then
    if (a1(2)/=2) print *,101
    if (a2(2)/=3) print *,102
   else if (k==2) then
    if (a1(2)/=4) print *,111
    if (a2(2)/=5) print *,112
   else
    if (a1(2)/=4) print *,121
    if (a2(2)/=5) print *,122
   end if
   a2(1)=4
   a2(2)=5
 end do
 if (a2(1)/=4) print *,102
 end subroutine
end
 

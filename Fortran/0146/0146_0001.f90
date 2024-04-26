integer,pointer::a(:)
allocate(a(3))
a=[1,2,3]
call sub01( a , a(2:3) )
 if (a(1)/=1) print *,201
 if (a(2)/=4) print *,202
 if (a(3)/=3) print *,203
print *,'pass'
contains
 subroutine sub01( a1 , a2)
 integer,pointer:: a1(:)
 integer,target :: a2(2)
 do k=1,3
   if (k==1) then
    if (a1(2)/=2) print *,101
   else if (k==2) then
    if (a1(2)/=4) print *,111
   else
    if (a1(2)/=4) print *,121
   end if
   a2(1)=4
 end do
 if (a2(1)/=4) print *,102
 end subroutine
end
 

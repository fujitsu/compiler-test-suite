subroutine sub(calltime)
integer,save :: a
integer :: b(2),c,d
integer :: calltime
equivalence(a,b,c)
equivalence(b(2),d)

if ( calltime == 1) then
b(1)=1
b(2)=2
end if

b=b+1

if ( calltime==2 .and. b(1)==3 .and. b(2)==4 ) then
print *,'pass'
end if
end subroutine sub

call sub(1)
call sub(2)

end

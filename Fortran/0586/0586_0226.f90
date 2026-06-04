external::sub
external::sub2
procedure(),pointer :: p1=>sub
procedure(),pointer :: p2=>sub2
call p1
call sub
call p2
print*,"pass"
end
recursive subroutine sub
procedure(sub),pointer :: p1=>sub 
procedure(),pointer :: p2=>sub 
integer,save::y=1
print*,"sub PASS"
if(y.ne.6)then
y =y+1
call p1
call p2
end if
end
subroutine sub2()
external::sub
procedure(),pointer :: p1=>sub
print*,"sub2 PASS"
call p1
end subroutine


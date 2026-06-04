subroutine s1
complex,target :: cmp(2:3)=[(11.0,1.0),(22.0,2.0)]
real,pointer :: cc(:)
cc=>cmp%im
if(cc(1) .ne. 1) print *,100,cc(1)
if(cc(2) .ne. 2) print *,101,cc(2)
end
call s1
print *,"pass"
end

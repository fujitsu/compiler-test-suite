subroutine s1
integer,pointer    ::b(:)
integer,target     ::c(5)
namelist /nam/b
b=>c(1:5:2)
b=[1,2,3]
write(2,nam)
call chk
end
call s1
print *,'pass'
end
subroutine chk
integer b(3)
namelist /nam/b
rewind 2
read(2,nam)
if (any(b/=[1,2,3]))print *,304
end



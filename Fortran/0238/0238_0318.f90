subroutine s1
logical,parameter::t=.true.
logical(1):: b1=t,b2=t,b3=t
write(13,*)101,b1
 end
subroutine s2
logical,parameter::t=.true.
logical(2):: b1=t,b2=t,b3=t
write(13,*)101,b1
 end
subroutine s3
logical,parameter::t=.true.
logical(4):: b1=t,b2=t,b3=t
write(13,*)101,b1
 end
subroutine s4
logical,parameter::t=.true.
logical(8):: b1=t,b2=t,b3=t
write(13,*)101,b1
 end
call s1
call s2
call s3
call s4
call chk
print *,'pass'
end
subroutine chk
logical n
rewind 13
read(13,*) k,n;If (.not.n)print *,n
read(13,*) k,n;If (.not.n)print *,n
read(13,*) k,n;If (.not.n)print *,n
read(13,*) k,n;If (.not.n)print *,n
end

subroutine sub(i)
integer j(i),jj(i)
j=1;jj=2
write(1,'(i4)',err=10) (/j,jj/)
return
10 continue
print *,'error'
end
call sub(2)
print *,'pass'
end



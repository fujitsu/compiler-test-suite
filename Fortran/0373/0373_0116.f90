k=0
call sub(k)
print*,k
end
subroutine sub(k)
k=k+1
if(k.le.5) call sub(k)
end subroutine

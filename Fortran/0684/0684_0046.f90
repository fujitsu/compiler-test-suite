integer b(3)
!$OMP PARALLEL PRIVATE(b)
b(1)=100;b(2)=200
b(2:3)=b(1:2)+1
call sub(b)
!$OMP END PARALLEL
print *,'pass'
contains
subroutine sub(y)
integer y(:)
if (any(y/=(/100,101,201/)))then
  print *,'error'
  print *,y
endif
end subroutine
end

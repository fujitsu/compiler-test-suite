character(0) , pointer , dimension(:,:) :: c
character(0) , target :: t(1,2,1)='a'
c(1:1,2:3)=> t
if (.not.is_contiguous(c)) print *,101
if (.not.is_contiguous(t)) print *,101
if (any(lbound(c)/=[1,2])) print *,102
if (any(ubound(c)/=[1,3])) print *,102
print *,'pass'
end

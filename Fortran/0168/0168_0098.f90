subroutine s1
  integer,allocatable:: p(:)
    allocate(p(12:13))
    p=[12,13]
if (any(lbound(p)/=12)) print *,201
if (any(p/=[12,13])) print *,202
end
call s1
print *,'pass'
end

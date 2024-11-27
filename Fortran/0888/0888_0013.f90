integer,pointer :: ii(:,:)
call s(NULL(ii))
contains
subroutine s(dmy)
integer,optional :: dmy(1,1,1)
print*,dmy
end subroutine
end




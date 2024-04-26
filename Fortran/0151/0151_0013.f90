subroutine s1(k)
do kk=1,k
block 
  integer:: x
  save
  select case (kk)
    case (1)
    x=1
    case (2)
    if (x/=1) print *,101
  end select
end block
end do
end
call s1(2)
print *,'pass'
end

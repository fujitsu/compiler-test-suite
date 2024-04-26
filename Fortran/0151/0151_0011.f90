subroutine s1(k)
do kk=1,k
block 
  integer:: x
  select case (kk)
    case (1)
    x=1
    case (2)
    write(1,*) x
  end select
end block
end do
end
call s1(2)
print *,'pass'
end

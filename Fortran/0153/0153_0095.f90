subroutine s1(k)
block 
  integer:: x
do kk=1,k
  select case (kk)
    case (1)
    x=1
    case (2)
    write(1,*) x
  end select
end do
end block
end
call s1(2)
print *,'pass'
end

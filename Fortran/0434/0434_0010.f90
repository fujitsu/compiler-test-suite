  call sss
print *,'pass'
contains
subroutine sss
  real(8) aaa(100,1000)
  real(8) bbb(1000)
  logical l
  aaa=1.0_8
  bbb=1.0_8
  do i1=1,100
     do i2=1,100
        l = count((/bbb==aaa(i2,:)/))
        if(l) aaa(i2,i1) = aaa(i2,i1) + 1.0_8
     enddo
  enddo
  if(aaa(100,1000)/=1.0_8) print *,'err'
end subroutine sss
end program

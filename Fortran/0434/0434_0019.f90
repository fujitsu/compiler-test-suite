  call sss1
  call sss2
  call sss3
  call sss4
print *,'pass'
contains
subroutine sss1
  real(8) aaa(100,1000)
  logical lll
  aaa=1.0_8
  do i1=1,100
     do i2=1,100
        if(kind(sum((/integer(1)::aaa(i2,:)/)))/=1) print *,'err1'
        lll = sum((/integer(1)::aaa(i2,:)/))
        if(lll) aaa(i2,i1) = aaa(i2,i1) + 1.0_8
     enddo
  enddo
  if(aaa(100,1000)/=1.0_8) print *,'err'
end subroutine sss1
subroutine sss2
  real(8) aaa(100,1000)
  logical lll
  aaa=1.0_8
  do i1=1,100
     do i2=1,100
        if(kind(sum((/integer(2)::aaa(i2,:)/)))/=2) print *,'err2'
        lll = sum((/integer(2)::aaa(i2,:)/))
        if(lll) aaa(i2,i1) = aaa(i2,i1) + 1.0_8
     enddo
  enddo
  if(aaa(100,1000)/=1.0_8) print *,'err'
end subroutine sss2
subroutine sss3
  real(8) aaa(100,1000)
  logical lll
  aaa=1.0_8
  do i1=1,100
     do i2=1,100
        if(kind(sum((/integer(4)::aaa(i2,:)/)))/=4) print *,'err3'
        lll = sum((/integer(4)::aaa(i2,:)/))
        if(lll) aaa(i2,i1) = aaa(i2,i1) + 1.0_8
     enddo
  enddo
  if(aaa(100,1000)/=1.0_8) print *,'err'
end subroutine sss3
subroutine sss4
  real(8) aaa(100,1000)
  logical lll
  aaa=1.0_8
  do i1=1,100
     do i2=1,100
        if(kind(sum((/integer(8)::aaa(i2,:)/)))/=8) print *,'err4'
        lll = sum((/integer(8)::aaa(i2,:)/))
        if(lll) aaa(i2,i1) = aaa(i2,i1) + 1.0_8
     enddo
  enddo
  if(aaa(100,1000)/=1.0_8) print *,'err'
end subroutine sss4
end program

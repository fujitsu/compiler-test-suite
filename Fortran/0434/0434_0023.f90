  call sss1
  call sss2
print *,'pass'
contains
subroutine sss1
  character(1) aaa(100,1000)
  character lll
  aaa="1"
  do i1=1,100
     do i2=1,100
        if(kind(minval((/character(1)::aaa(i2,:)/)))/=1) print *,'err1'
        lll = minval((/character(1)::aaa(i2,:)/))
        aaa(i2,i1) = aaa(i2,i1)//""
     enddo
  enddo
  if(aaa(100,1000)/="1") print *,'err'
end subroutine sss1
subroutine sss2
  character(1,4) aaa(100,1000)
  character(1,4):: lll
  aaa=4_"1"
  do i1=1,100
     do i2=1,100
        if(kind(minval((/character(1,4)::aaa(i2,:)/)))/=4) print *,'err1'
        lll = minval((/character(1,4)::aaa(i2,:)/))
        aaa(i2,i1) = aaa(i2,i1)//4_""
     enddo
  enddo
  if(aaa(100,1000)/=4_"1") print *,'err'
end subroutine sss2
end

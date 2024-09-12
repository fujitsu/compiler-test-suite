  real(8) aaa(100,1000)
  real(8) bbb(1000)
  logical l
  aaa=1.0d0
  do i1=1,100
     do i2=1,100
        l = all((/aaa(i2,:)==bbb/))
        if(l) aaa(i2,i1) = aaa(i2,i1) + 1.0d0
     enddo
  enddo
  if(aaa(100,1000)/=1.0_8) print *,'err'
  print *,'pass'
end program

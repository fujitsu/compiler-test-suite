program main
  real*8 aaa(100),bbb(100),ccc(100),ddd(100),eee(100)
  real*8 fff(100),ggg(100),hhh(100),xxx(100)
  do i=1,100
     aaa(i) = i * 0.1
     bbb(i) = i * 0.2
     ccc(i) = i * 0.3
     ddd(i) = i * 0.4
     eee(i) = i * 1.1
     fff(i) = i * 1.2
     ggg(i) = i * 1.3
     hhh(i) = i * 1.4
     xxx(i) = 0.0
  end do
  call normal_sub(aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,xxx)
  call noconcurrent_sub(aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,xxx)
  call concurrent_sub(aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,xxx)
end program main

subroutine normal_sub(aaa, bbb, ccc, ddd, eee, fff, ggg, hhh, xxx)
  real*8 aaa(100),bbb(100),ccc(100),ddd(100),eee(100)
  real*8 fff(100),ggg(100),hhh(100),xxx(100)
  do i=1,100
     xxx(i) = aaa(i) * bbb(i) + ccc(i) * ddd(i) + eee(i) * fff(i) + ggg(i) * hhh(i)
  end do
  if (dint(xxx(50)) == 8200) then
     print *,"OK"
  else
     print *,"NG",dint(xxx(50))
  end if
end subroutine normal_sub

subroutine noconcurrent_sub(aaa, bbb, ccc, ddd, eee, fff, ggg, hhh, xxx)
  real*8 aaa(100),bbb(100),ccc(100),ddd(100),eee(100)
  real*8 fff(100),ggg(100),hhh(100),xxx(100)

  do i=1,100
     xxx(i) = aaa(i) * bbb(i) + ccc(i) * ddd(i) + eee(i) * fff(i) + ggg(i) * hhh(i)
  end do

  if (dint(xxx(50)) == 8200) then
     print *,"OK"
  else
     print *,"NG",dint(xxx(50))
  end if
end subroutine noconcurrent_sub

subroutine concurrent_sub(aaa, bbb, ccc, ddd, eee, fff, ggg, hhh, xxx)
  real*8 aaa(100),bbb(100),ccc(100),ddd(100),eee(100)
  real*8 fff(100),ggg(100),hhh(100),xxx(100)

  do i=1,100
     xxx(i) = aaa(i) * bbb(i) + ccc(i) * ddd(i) + eee(i) * fff(i) + ggg(i) * hhh(i)
  end do

  if (dint(xxx(50)) == 8200) then
     print *,"OK"
  else
     print *,"NG",dint(xxx(50))
  end if
end subroutine concurrent_sub

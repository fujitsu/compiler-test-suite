 call s1
 print *,'pass'
 end
 subroutine s1
 call ss1
 end
 subroutine ss1
 implicit integer(8)(i-n)
 integer(8) i(0:63),ii(0:63)
 ii=0
 do j=62,0,-1
  i(j)=2**j+1
  call mvbits(i(j),0,2,ii(j),1)
  if (i(j)/=2**j+1)write(6,*) "NG"
  select case(j)
     case(0)
       if (ii(j)/=4)write(6,*) "NG"
     case(1)
       if (ii(j)/=6)write(6,*) "NG"
     case default
       if (ii(j)/=2)write(6,*) "NG"
  end select
  call mvbits(i(j),0,2,i(j),1)
  select case(j)
     case(0)
       if (i(j)/=4)write(6,*) "NG"
     case(1)
       if (i(j)/=7)write(6,*) "NG"
     case(2)
       if (i(j)/=3)write(6,*) "NG"
     case default
       if (i(j)/=2**j+1+2)write(6,*) "NG"
  end select
 end do
 end

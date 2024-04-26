integer::a(5,7) = 10
integer::u(3) = [1,3,2]
integer::v(4) = [2,1,1,3]
 call sub(a(u,v))
 if(a(1,4).ne.10)print*,"103" 
 print *,'pass'
 contains
subroutine sub(b)
 integer,contiguous:: b(:,:)
 if(is_contiguous(b).neqv..true.)print*,"104"
 if(loc(a(1,2)).eq.loc(b(1,2)))print*,"105",loc(a(1,2)) ,loc(b(1,2))
 if(loc(a(1,1)).eq.loc(b(1,1)))print*,"106",loc(a(1,1)) ,loc(b(1,1))
 if(loc(a(2,3)).eq.loc(b(2,3)))print*,"107",loc(a(2,3)) ,loc(b(2,3))
  b=b+10
  end subroutine
  end


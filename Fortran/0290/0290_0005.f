      subroutine sub1(i,j,k,l,m)
      if( i.eq.1 .and. j.eq.2 .and. k.eq.3 .and. l.eq.4 
     + .and. m.eq.5 ) then
        print *,' OK '
      else
        print *,' NG '
      endif
      end
      subroutine sub2(i,j,k) 
      if( i.eq.6 .and. j.eq.7 .and. k.eq.8 ) then
        print *,' OK '
      else
        print *,' NG '
      endif
      end
      program main
      external sub1,sub2
      call subx(sub1,1,2,3,4,5,sub2,6,7,8)
      end
      subroutine subx(s1,i1,i2,i3,i4,i5,s2,i6,i7,i8)
      external s1,s2
      call sub(s1,i1,i2,i3,i4,i5,s2,i6,i7,i8)
      end
      subroutine sub(s1,i1,i2,i3,i4,i5,s2,i6,i7,i8)
      external s1,s2
      call s1( i1,i2,i3,i4,i5 )
      call s2( i6,i7,i8 )
      end

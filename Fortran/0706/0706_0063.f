      call s1
      print *,'pass'
      end
      subroutine s1
      character*(*),parameter::c1='1234'
      integer,parameter::i=len(c1)
      character (len= len( (/ c1 , c1 /) ) ) :: c_v=c1
      if (len(c1)/=4.or.i/=4) print *,'fail'
      if (len(c_v)/=len(c1)) print *,'fail'
      if (len( (/ c1 , c1 /) ) /= i) print *,'fail'
      call       ss1(c1,c_v,i,len(c1))
      end subroutine s1
      subroutine ss1(c1,c_v,i,j)
      character*(j) c1
      character (len= len( (/ c1 , c1 /) ) ) :: c_v
      if (len(c_v)/=i)print *,'fail'
      if (len(c1 )/=i)print *,'fail'
      if (len( (/ c1 , c1 /) ) /= i) print *,'fail'
      if (c_v(1:i)/='123456789'(1:i))print *,'fail'
      end subroutine ss1

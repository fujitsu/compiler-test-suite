c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      call ss1
      call ss2('12')
      call ss3('12')
      end
      subroutine ss1
      i=0
      if (len(reshape( (/('12',i=1,7) /),(/1,7/) ) )/= len('12'))
     1  print *,'fail'
      if (any( reshape( (/('12',i=1,7) /),(/1,7/) )/= '12')) i=1
      if (i/=0)print *,'fail'
      end
      subroutine ss2(c)
      character*(*)c
      i=0
c     print *,'#1'
      if (len( reshape( (/(c,i=1,7) /),(/1,7/) ) )/= len(c))
     1  print *,'fail'
c     print *,'#2'
      if (any( reshape( (/(c,i=1,7) /),(/1,7/) )/= '12')) i=1
      if (i/=0)print *,'fail'
      if (any( reshape( (/(cf(1),i=1,7) /),(/1,7/) )/= '12')) i=1
      if (i/=0)print *,'fail'
      contains
       function cf(length) result(r)
       character (len=length+1)::r
       r='12'
       end function
      end 
      subroutine ss3(c)
      character*(*)c
      i=0
      if (any( reshape( (/('12',i=1,7) /),(/1,7/) )/= cf(1))) i=1
      if (i/=0)print *,'fail'
      if (any( reshape( (/(c,i=1,7) /),(/1,7/) )/= cf(1))) i=1
      if (i/=0)print *,'fail'
      if (any( reshape( (/(cf(1),i=1,7) /),(/1,7/) )/= cf(1))) i=1
      if (i/=0)print *,'fail'
      contains
       function cf(length) result(r)
       character (len=max(length,2))::r
       r='12'
       end function
      end 

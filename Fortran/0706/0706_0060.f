      call s1 
      print *,'pass'
      end
      module m_1
      integer unit/10/
      contains
       function char_f_entry(is,c) result(char_f)
        character*(is)::char_f,c*(*)
        char_f=c
        is=is+1
        if (len(char_f)/=is-1)print *,'fail'
        is=is-1
       end function char_f_entry
      end module m_1
      subroutine s1
      use m_1
      character (len=*),parameter::p='abcdefghijklmn'
      character x(2,2),y(2,2)
      is=5
      x='x';y='y'
      if (char_f_entry(is,'abcdefghijklmn')/=p(1:5))print *,'fail'
      if (char_f_entry(is,'abcdefghijklmn')//'y'
     1                                /=p(1:5)//'y')print *,'fail'
      if (char_f_entry(is,'abcdefghijklmn')//
     1    char_f_entry(is,'abcdefghijklmn')//
     1    char_f_entry(is,'abcdefghijklmn')/=
     1        p(1:5)//p(1:5)//p(1:5))print *,'fail'
      if (char_f_entry(is,'abcdefghijklmn')//'x'//
     1    char_f_entry(is,'abcdefghijklmn')//'x'//
     1    char_f_entry(is,'abcdefghijklmn')/=
     1        p(1:5)//'x'//p(1:5)//'x'//p(1:5))print *,'fail'
      call sif(char_f_entry(is,'abcdefghijklmn'),p(1:5))
      call sif(char_f_entry(is,'abcdefghijklmn')//'y',
     1                                  p(1:5)//'y')
      call sif (char_f_entry(is,'abcdefghijklmn')//
     1    char_f_entry(is,'abcdefghijklmn')//
     1    char_f_entry(is,'abcdefghijklmn'),  
     1        p(1:5)//p(1:5)//p(1:5))
      call sif (char_f_entry(is,'abcdefghijklmn')//'x'//
     1    char_f_entry(is,'abcdefghijklmn')//'x'//
     1    char_f_entry(is,'abcdefghijklmn'), 
     1        p(1:5)//'x'//p(1:5)//'x'//p(1:5))
      call aif(char_f_entry(is,'abcdefghijklmn')//y,p(1:5)//y)
      call aif(char_f_entry(is,'abcdefghijklmn')//y,
     1                                  p(1:5)//y)
      call aif (char_f_entry(is,'abcdefghijklmn')//
     1    char_f_entry(is,'abcdefghijklmn')//
     1    char_f_entry(is,'abcdefghijklmn')//x,  
     1        p(1:5)//p(1:5)//p(1:5)//x)
      call aif (char_f_entry(is,'abcdefghijklmn')//x//
     1    char_f_entry(is,'abcdefghijklmn')//x//
     1    char_f_entry(is,'abcdefghijklmn'), 
     1        p(1:5)//x//p(1:5)//x//p(1:5))
      end
      subroutine sif(a,b)
      character*(*) a,b
      if (len(a)/=len(b))print *,'fail'
      if ((a)/=(b))print *,'fail'
      end
      subroutine aif(a,b)
      character*(*),dimension(2,2):: a,b
      if (len(a)/=len(b))print *,'fail'
      if (a(1,1)/=b(1,1))print *,'fail'
      if (a(2,1)/=b(2,1))print *,'fail'
      if (a(1,2)/=b(1,2))print *,'fail'
      if (a(2,2)/=b(2,2))print *,'fail'
      end

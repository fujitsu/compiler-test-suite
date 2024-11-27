 call s1
 print *,'pass'
 end
 subroutine s1
  integer:: a(2)
  a=100
  call sub1( (a) , a )
  a=100
  call sub2( (a) , a )
  contains
    subroutine sub1( a1, a2)
    integer::a1(:),a2(2)
    a2=1
    if(any(a1/=100))write(6,*) "NG"
    end subroutine
    subroutine sub2( a1, a2)
    integer::a1(:),a2(2)
    intent(in)::a1
    a2=1
    if(any(a1/=100))write(6,*) "NG"
    end subroutine
 end


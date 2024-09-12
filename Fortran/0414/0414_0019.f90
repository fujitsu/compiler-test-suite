 integer(8) :: k
  type ty10(ii)
    integer(8),kind::ii=20
    integer(8) :: array(ii)=(/(k,k=1,ii)/)
  end type
  type ::ty1(jj)
    integer(8),kind::jj=10
    type(ty10(jj+10)) :: str
    type(ty10(jj+20)) :: str2
  end type
  TYPE(ty1(10)) :: xxx
if (xxx%str%array(1).ne.1) print *,'err'
if (xxx%str%array(20).ne.20) print *,'err'
if (size(xxx%str%array).ne.20) print *,'err'
if (xxx%str2%array(1).ne.1) print *,'err'
if (xxx%str2%array(30).ne.30) print *,'err'
if (size(xxx%str2%array).ne.30) print *,'err'
print *,'pass'
end

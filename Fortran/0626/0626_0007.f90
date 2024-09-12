subroutine s1(xx)

interface 
  subroutine sub(k1,k2)
  end subroutine
end interface
 procedure(sub),pointer::sp
 procedure(sub)        ::ss
 procedure(sub)        ::xx
 procedure(ss)        ::sr

 call ss(k2=2,k1=1)
 call xx(k2=2,k1=1)
 call sr(k2=2,k1=1)
sp=>ss
 call sp(k2=2,k1=1)

end
procedure () sub
call s1(sub)
print *,'pass'
end

  subroutine sub(k1,k2)
  entry      ss(k1,k2)
  entry      sr(k1,k2)
   if (k1/=1) print *,101,k1
   if (k2/=2) print *,102,k2
  end subroutine

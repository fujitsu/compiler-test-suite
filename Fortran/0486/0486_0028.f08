  integer::k2
call s1(1,k2)
print *,'pass'
contains
pure subroutine s1(k1,k2)
  integer,intent(in)::k1
  integer,intent(out)::k2
k2=1
k3=k1
k2=k2
end subroutine
end

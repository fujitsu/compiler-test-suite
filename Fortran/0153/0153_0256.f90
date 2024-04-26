subroutine s1
TYPE a_ty(k1)
  INTEGER,kind :: k1
  INTEGER :: arr = 1
  INTEGER :: brr(k1)=3
END TYPE

TYPE b_ty
  INTEGER :: bb
  TYPE(a_ty(10)) :: cmp_1
END TYPE
TYPE(b_ty) :: x
x%bb=1
if (x%cmp_1%arr/=1) print *,101,x%cmp_1%arr
do kk=1,10
if (x%cmp_1%brr(kk)/=3) print *,111,x%cmp_1%brr
end do
x%cmp_1%arr=2
if (x%cmp_1%arr/=2) print *,102
if (x%bb       /=1) print *,103
x%cmp_1%brr=2

if (any(x%cmp_1%brr/=2)) print *,104
end
call s1
print *,'pass'
end

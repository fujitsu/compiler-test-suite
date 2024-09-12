subroutine s1(k)
  type x(k)
   integer,kind :: k
   integer:: a1(k)
  end type
  type (x(2)):: v
if (k/=1) print *,201
 v%a1=[1,2]
end
call s1(1)
print *,'pass'
end

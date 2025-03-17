  type ty1
   integer,pointer :: p(:)
   integer:: x(2)
  end type
  type(ty1) ,pointer :: a(:)
ii=2; jj=2; allocate(a(2));allocate(a(2)%p(2))
   a(ii)%p(jj) =1
   a(ii)%x(jj) =2
if (a(2)%p(2)/=1)write(6,*) "NG"
if (a(2)%x(2)/=2)write(6,*) "NG"
print *,'pass'
  end

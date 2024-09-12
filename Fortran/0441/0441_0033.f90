interface x
   subroutine sub(i)
     value ::i
   end subroutine
end interface
integer,pointer::p,pp(:)
integer::aa(2)
integer,allocatable::w,ww(:)
allocate(p,source=1)
allocate(pp(2),source=1)
allocate(w,source=1)
allocate(ww(2),source=1)
i=1
k=1
call sub(i)
call sss(k)
if (i/=1) print *,101
if (k/=1) print *,102
call ttt(p)
if (p/=2) print *,103
call rrr(pp)
if (any(pp/=2)) print *,104
call rrr(aa)
if (any(aa/=2)) print *,105
call ttt(w)
if (w/=2) print *,103
call rrr(ww)
if (any(ww/=2)) print *,105
print *,'pass'
contains
   subroutine sss(i)
     value ::i
i=2
   end subroutine
   subroutine ttt(i)
i=2
   end subroutine
   subroutine rrr(i)
integer::i(2)
i=2
   end subroutine
end
   subroutine sub(i)
     value ::i
i=2
   end subroutine

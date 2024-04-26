integer,parameter:: a(1,1,2)=10
integer,parameter:: b(1,2)=iall(a,1)
integer,parameter:: c(*,*)=iall(a,1)
if (any(b/=10) .or. any(shape(b)/=[1,2]) ) then
print *,101,b,shape(b)
endif
if (any(c/=10) .or. any(shape(c)/=[1,2]) ) then
print *,102,c,shape(c)
endif
if (any(iall(a,1)/=10)) then
print *,103,iall(a,1),shape(iall(a,1))
endif
call s1
print *,'pass'
end
subroutine s1
integer:: a(1,1,2)=10
integer:: b(1,2)
integer:: c(1,2)
b=iall(a,1)
c=iall(a,1)
if (any(b/=10) .or. any(shape(b)/=[1,2]) ) then
print *,201,b,shape(b)
endif
if (any(c/=10) .or. any(shape(c)/=[1,2]) ) then
print *,202,c,shape(c)
endif
end

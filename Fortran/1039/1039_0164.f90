TYPE gg
  SEQUENCE
  integer     ::t,q,f
END TYPE
type g
  integer(1) ::dummy
  type (gg)::h
end type
TYPE(g) ,POINTER::x

      ALLOCATE (x)
      x%h=gg(1,2,3)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
print *,'pass'
END 

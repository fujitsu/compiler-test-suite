subroutine s2
 type z
   integer(4),allocatable::za2(:)
 end type
 type (z)::b(2),v
 integer,parameter::n1=2,n2=2,n3=2
 integer::vs1(2)
   v=z(null())
   b(vs1)=v
end
 print *,'pass'
 end

subroutine sub
integer,pointer::a(:)
allocate(a(1:3))
a(1)=1
!$OMP PARALLEL PRIVATE(a)
 if(1/=1) a(1)=1
!$OMP END PARALLEL
end
call sub
print *,'pass'
end

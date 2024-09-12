subroutine sub(a)
integer,pointer:: a(:)
a=reshape((/10,20/),(/2/))
!$OMP PARALLEL default(private)
allocate(a(13:14))
!$OMP END PARALLEL
end subroutine
interface
subroutine sub(a)
integer,pointer:: a(:)
end subroutine
end interface
integer,pointer:: a(:)
allocate(a(3:4))
call sub(a)
print *,'pass'
end

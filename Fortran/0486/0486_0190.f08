         write(1,*)selected_real_kind (radix=2)
         call sss(4,2)
rewind 1
read(1,*) n
if (n/=4.and.n/=2) print *,101,n
read(1,*) n
if (n/=4.and.n/=2) print *,102,n
read(1,*) n
if (n/=4.and.n/=2) print *,103,n
print *,'pass'
         contains
         subroutine sss(j,k)
         integer,optional::j,k
         write(1,*)selected_real_kind (r=j)
         write(1,*)selected_real_kind (radix=k)
         end subroutine
         end

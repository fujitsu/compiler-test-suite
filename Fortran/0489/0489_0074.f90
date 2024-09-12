         call sss5
rewind 1
read(1,*) n
if (n/=2 .and. n/=4) print *,1001
read(1,*) n
if (n/=2 .and. n/=4) print *,1002
print *,'pass'
         contains
         subroutine sss5
         write(1,*)selected_real_kind (r=0,p=0,radix=2)
         write(1,*)selected_real_kind (        radix=2)
         end subroutine
         end

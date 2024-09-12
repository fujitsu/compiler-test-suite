         call sss5
rewind 1
read(1,*) n
if (n/=2 .and. n/=4) print *,1001
read(1,*) n
if (n/=2 .and. n/=4) print *,1002
read(1,*) n
if (n/=2 .and. n/=4) print *,1003
read(1,*) n
if (n/=2 .and. n/=4) print *,1004
print *,'pass'
         contains
         subroutine sss5
k=0
         write(1,*)selected_real_kind (r=k,p=k        )
         write(1,*)selected_real_kind (r=k,p=k,radix=2)
         write(1,*)selected_real_kind (r=k,p=k        )
         write(1,*)selected_real_kind (r=k,p=0,radix=2)
         end subroutine
         end

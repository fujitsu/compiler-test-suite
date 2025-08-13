         call sss5
rewind 25
read(25,*) n
if (n/=2 .and. n/=4) print *,1001
read(25,*) n
if (n/=2 .and. n/=4) print *,1002
read(25,*) n
if (n/=2 .and. n/=4) print *,1003
read(25,*) n
if (n/=2 .and. n/=4) print *,1004
print *,'pass'
         contains
         subroutine sss5
k=0
         write(25,*)selected_real_kind (r=k,p=k        )
         write(25,*)selected_real_kind (r=k,p=k,radix=2)
         write(25,*)selected_real_kind (r=k,p=k        )
         write(25,*)selected_real_kind (r=k,p=0,radix=2)
         end subroutine
         end

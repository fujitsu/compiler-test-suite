         write(26,*)selected_real_kind (r=0,p=0,radix=2)
         write(26,*)selected_real_kind (        radix=2)
rewind 26
read(26,*) n
if (n/=2 .and. n/=4) print *,1001
read(26,*) n
if (n/=2 .and. n/=4) print *,1002
print *,'pass'
         end

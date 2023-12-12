         complex,target:: tar=(10,11)
          real,pointer :: ptr1=>tar%re
          real,pointer :: ptr2=>tar%im
if (ptr1/=10) print *,101
if (ptr2/=11) print *,102
print *,'OK'
         end


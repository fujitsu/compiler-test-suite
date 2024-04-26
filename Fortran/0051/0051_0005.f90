 real,target  :: it,ita(10)
 real ,pointer :: ip=>it,ipa(:)=>ita

         ipa=1
         if (any(ipa/=1)) print *,201
         ip=1
        if (   (ip/=1)) print *,211
        print *,'pass'
        end

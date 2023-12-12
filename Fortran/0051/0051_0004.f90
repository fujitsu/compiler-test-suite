 integer,target  :: it=1,ita(10)=20
 integer ,pointer :: ip,ipa(:)
 data  ip /it/
 data  ipa /ita/
!ip=>it
!ipa=>ita
       
         ipa=1
         if (any(ipa/=1)) print *,201
         ip=1
        if (   (ip/=1)) print *,211
        print *,'pass'
        end


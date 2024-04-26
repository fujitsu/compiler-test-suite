 type ty
 complex:: it,ita(10)
 end type
 type(ty),target,save::obj
 real ,pointer :: ip,ipa(:)
 data  ip /obj%it%re/
data  ipa /obj%ita(1:10:1)%re/

         ipa=1
         if (any(ipa/=1)) print *,201
         ip=1
        if (   (ip/=1)) print *,211
        print *,'pass'
        end

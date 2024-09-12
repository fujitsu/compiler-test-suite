module m
   type ty
     integer::x
     contains
      final f1,f2
   end type
 contains
   subroutine f1(e)
     type(ty)::e
      write(1,*)"501"
   end subroutine
   subroutine f2(e)
     type(ty)::e(:)
      write(1,*)"502"
   end subroutine
end

subroutine s1
use m
  type(ty)::obj1(1),obj2
write(1,*)301
    obj2%x=10
write(1,*)302
    obj1=[ obj2 ]
write(1,*)303
    write(1,*) 900,obj1%x
write(1,*)304
    obj2= ty( 11 )
write(1,*)305
    write(1,*) 901,obj2%x
write(1,*)306
end 
call s1
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) k;if (k/=301) print *,101,k
read(1,*) k;if (k/=302) print *,102,k
read(1,*) k;if (k/=502) print *,103,k
read(1,*) k;if (k/=303) print *,104,k
read(1,*) k,n;if (any([k,n]/=[900,10])) print *,105,k,n
read(1,*) k;if (k/=304) print *,106,k
read(1,*) k;if (k/=501) print *,107,k
read(1,*) k;if (k/=305) print *,108,k
read(1,*) k,n;if (any([k,n]/=[901,11])) print *,109,k,n
read(1,*) k;if (k/=306) print *,110,k
read(1,*) k;if (k/=501) print *,111,k
read(1,*) k;if (k/=502) print *,112,k
end
   

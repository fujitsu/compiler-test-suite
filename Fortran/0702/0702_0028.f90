   call s1
   print *,'pass'
   end
   subroutine s1
   call sub(4,3)
   end
   subroutine sub(n,m)
   pointer(ip,parray(n,m,*))
   real a(24)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24/
   real az(24)
   ip=loc(a)
   if (any(parray(:,:,1)/=reshape((/(real(i),i=01,12)/),(/4,3/))))print *,'fail'
   if (any(parray(:,:,2)/=reshape((/(real(i),i=13,24)/),(/4,3/))))print *,'fail'
   if (any(shape(parray(:,:,1))/=(/4,3/)))print *,'fail'
   if (any(shape(parray(:,:,2))/=(/4,3/)))print *,'fail'
   call subx(parray)
   call suby(parray(:,:,1),parray(:,:,2))
   write(1,*)parray(:,:,1),parray(:,:,2)
   rewind 1
   read (1,*) az
   if (any(az/=a))print *,'fail'
   contains
    subroutine suby(a1,a2)
     real,dimension(:,:)::a1,a2
     if (any((/a1,a2/)/=a))print *,'fail'
     if (any(shape(a1)/=(/4,3/)))print *,'fail'
     if (any(shape(a2)/=(/4,3/)))print *,'fail'
    end subroutine
   end
   subroutine subx(p)
   real p(24)
   if (any(p/=(/(real(i),i=1,24)/)))print *,'fail'
   end

module m1
interface xx
procedure :: xx4,xx8
end interface
contains
   subroutine xx4(k)
      integer(4)::k
write(1,*) k
   end subroutine
   subroutine xx8(k)
      integer(8)::k
print *,8
write(2,*) k
   end subroutine
end
use m1
         call sss0(4)
         call sss1(4)
         call sss3(2,4)
         call sss3(j=4)
         call sss4(2,4)
         call sss4(j=4)
         call sss5(k=2,j=4, n=4)
rewind 1
read(1,*)nn;if (nn/=4) print *,301,nn
read(1,*)nn;if (nn/=4.and.nn/=2) print *,302,nn
read(1,*)nn;if (nn/=4.and.nn/=2) print *,304,nn
read(1,*)nn;if (nn/=4.and.nn/=2) print *,306,nn
read(1,*)nn;if (nn/=4) print *,307,nn
read(1,*)nn;if (nn/=4) print *,309,nn
read(1,*)nn;if (nn/=4) print *,310,nn
print *,'pass'
         contains
         subroutine sss0(k)
         integer,optional::k
         call xx(selected_real_kind (p=k))
         end subroutine
         subroutine sss1(k)
         integer,optional::k
         call xx(selected_real_kind (r=k))
         end subroutine
         subroutine sss2(k)
         integer,optional::k
         call xx(selected_real_kind (radix=k))
         end subroutine
         subroutine sss3(k,j)
         integer,optional::k,j
         call xx(selected_real_kind (r=j,radix=k))
         end subroutine
         subroutine sss4(k,j)
         integer,optional::k,j
         call xx(selected_real_kind (p=j,radix=k))
         end subroutine
         subroutine sss5(k,j,n)
         integer,optional::k,j,n
         call xx(selected_real_kind (r=n,p=j,radix=k))
         end subroutine
         end

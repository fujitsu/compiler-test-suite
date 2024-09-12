module m1
  abstract interface
     subroutine s01( k1, c1)
      integer::k1
      real,optional,intent(in):: c1 
     end subroutine
  end interface
end
module m2
 interface
   subroutine s02( sub , n1 , n2 , c1)
     use m1
     procedure (   ) :: sub
     integer,intent(in):: n1
     integer,intent(in),optional:: n2
     real,optional,intent(out):: c1
   end subroutine
 end interface
end

module m3
use m2
end

subroutine s03
use m3
end

subroutine s04
use m1
use m3
     procedure (s01) :: ext
call s02( ext , 1 , 2 , a)
if (a/=2) print *,301
end

   subroutine s02( sub , n1 , n2 , c1)
     use m1
     procedure (s01) :: sub
     integer,intent(in):: n1
     integer,intent(in),optional:: n2
     real,optional,intent(out):: c1
if (n1/=1) print *,101
if (n2/=2) print *,102
    call sub( 100 )
    c1=2.0
   end subroutine

     subroutine ext( k1, c1)
      integer::k1
      real,optional,intent(in):: c1 
      if (k1 /= 100) print *,10000
      if (present(c1)) print *,10001
     end subroutine

call s03
print *,'pass'
end

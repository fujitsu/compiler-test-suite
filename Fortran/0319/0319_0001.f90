 subroutine s1
 integer(8),pointer   :: k1, k2
 common /com/k1,k2
 integer,dimension(10):: i1
 allocate(k1)
 allocate(k2)
 k1=1
 k2=10
 call set( i1(k1:k2) )
 print *,i1
 end
 call s1
 stop
 end
 subroutine set(ia)
 integer,dimension(10):: ia
 do i=1,10; ia(i)=i; enddo
 end subroutine

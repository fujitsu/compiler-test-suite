            module mod1
            type type1
              real*8 a(2)
            end type
            type type2
              type(type1),pointer::r(:) => null()
            end type
            type(type1),pointer::p => null()
            type(type2),pointer::q(:) => null()
            end
            subroutine sub(n,x,iflag)
            use mod1
            integer iflag(2,n)
            real*8 x(n)
            do k=1,n
              i = iflag(1,k)
              j = iflag(2,k)
              p=> q(i)%r(j)
              x(k) = p%a(1)+ p%a(2)
            enddo
            end
subroutine s1
integer,pointer:: p(:)
integer,pointer:: p1(:)
integer,target :: p2(2)
p2=[1,2]
allocate(p1(2),source=[1,2])
p=>p1
if (any(p/=[1,2])) print *,101 
p=>p2
if (any(p/=[1,2])) print *,102 
end
call s1
print *,'pass'
end

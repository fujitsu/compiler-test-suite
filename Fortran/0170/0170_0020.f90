      subroutine init(a,n)
      integer,intent(out)::a(1000)
      integer,intent(in)::n
      a = [ [complex::(1,i=1,n)],[complex::(2,i=n+1,1000)] ]
      end
subroutine s1
integer:: a(1000)
a=0
call init(a,0)
if (any(a/=2)) print *,101
end
do k=1,100
call s1
end do
print *,'pass'
end

      

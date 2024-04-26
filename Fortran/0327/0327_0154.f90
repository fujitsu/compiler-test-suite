 integer,dimension(4):: a
 a=(/1,2,3,4/)
 call sub(a,a)
 print *,'pass'
 end

 subroutine sub(a,b)
 integer,dimension(4):: a,b
 integer,dimension(4):: c,r
 integer,dimension(2):: n
 c=(/-10,-20,-30,-40/)
 n=(/1,4/)
 a(n)=c(n)
 r(n)=b(n)
 end

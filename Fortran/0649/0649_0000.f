          common /com/ j
          integer a(10)
          j=10
          call sub(a)
          do 10 i=1,10
10        if (a(i).ne.i) print *,'err ',i
          print *,'ok'
          end
          subroutine sub(a)
          integer a(i)
          EQUIVALENCE(i,j)
          common /com/ j
          do 10 k=1,j
 10       a(k)=k
          end 

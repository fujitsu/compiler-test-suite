 integer,parameter::k=4
          REAL(k)::act1(10,10)
act1=0
    call sub( act1(1:10:2,1:10:2) )
if (any(abs(act1(1:10:2,1:10:2) - 0.05)> 0.00001)) print *,201
print *,'pass'
         contains
          subroutine sub(dmy1)
          REAL(k)::dmy1(:,:)
          REAL(k)::act2(5,5)=.1,act3(5,5)=.1
         dmy1=MATMUL(act2,act3)
         END
        END

c
       program snrta2
c
       integer x1(5,5),b(5),sum1,sum2,sum3,sum4,sum5,i,sum
       integer fun(5)
c
       do 5 i=1,5
           b(i)=i
           do 5 j=1,5
                 x1(i,j)=i*j
  5    continue
c
       do 15 i=1,5
           fun(i) = i
           go to (10,20,30,40,50) fun(i)
  50       sum1=b(1)*x1(1,1)
  40       sum2=b(2)*x1(2,2)
  30       sum3=b(3)*x1(3,3)
  20       sum4=b(4)*x1(4,4)
  10       sum5=b(5)*x1(5,5)
  15   continue
c
       sum = sum1+sum2+sum3+sum4+sum5
       if(sum .eq. 225) then
            write(6,*) 'ok'
       else
            write(6,*) 'ng'
       end if
       end
c
c
       function fun(a)
       integer a
c
       fun=(a*5)/5
       return
       end

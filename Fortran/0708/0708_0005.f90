 call s1
 print *,'pass'
 end
 subroutine s1
1   i=1
2   forall(j=1:2)
3    i=i+1
4   end forall
5   continue
6   i=0;ii=0
7   forall(j=1:2,k=1:3,m=1:4)
8       ii=ii+1
9     forall(jj=1:2,kk=1:3,mm=1:4)
10      i=i+1
11    end forall
12  end forall
13  continue
14  continue
    i=1
    forall(j=1:2)
     i=i+1
    end forall
    continue
    i=0;ii=0
    forall(j=1:2,k=1:3,m=1:4)
        ii=ii+1
      forall(jj=1:2,kk=1:3,mm=1:4)
        i=i+1
      end forall
    end forall
    continue
    continue
    end

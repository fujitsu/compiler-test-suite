1integer(8),allocatable::ii(:);
allocate(ii(10000));
2jj=-1;
i1=0
ii=-1
3forall (kk=-(jj):10000:-(jj),jj<0);
4ii(1:i1)=ii(1:i1)
5end forall;
forall (kk=-(jj):10000:-(jj))
 ii(1:i1)=kk**(-(jj))**1;
end forall;
if(sum(ii)/=-10000) print *,'err'
6print *,'pass';
7end;

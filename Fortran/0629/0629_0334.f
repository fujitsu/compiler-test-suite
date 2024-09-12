      program main
      integer(kind=4),dimension(3,3)          ::i04va
      integer(kind=2),dimension(:),allocatable::i04s1
      data i04va/2,2,1,8,10,7,6,6,3/
      allocate(i04s1(3))
      i04s1(1)=3
      i04s1(2)=1
      i04s1(3)=2
      print *,i04va
      i04va(mod(i04va(1,i04s1),3)+1,:)=i04va(:,i04s1)
      deallocate(i04s1)
      write(6,*) 'i04va = ',i04va
      end

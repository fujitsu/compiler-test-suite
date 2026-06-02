c
c
      call s1
      print *,'pass'
      end
      module mm
       integer(kind=8),parameter::kv=-4
       logical(kind=-kv),parameter::t=.true.,f=.false.
       logical(kind=-kv)        ::a5(3),a6(3,3)
       logical(kind=-kv),parameter::a7(3)=(/f,f,f/)
       logical(kind=-kv),parameter::a8(3,3)=
     1               reshape((/(f,f,f,k=1,3)/),(/3,3/))
       data a5/f,f,f /        a6/f,f,f,f,f,f,f,f,f/
       integer ,dimension(3)::v=(/1,2,3/)
       private k
       contains
         logical function cnt(i)
         cnt=.true.
         if (i==0)cnt=.false.
         end function
      end
      module nnk
       integer(kind=8),parameter::kv=-4
      end module
      module nn
       use nnk
       logical(kind=-kv),parameter::t=.true.,f=.false.
       logical(kind=-kv),public ::a5(3),a6(3,2)
       logical(kind=-kv),public,parameter::a7(3)=(/t,f,t/)
       logical(kind=-kv),public,parameter::a8(3,2)=
     1   reshape((/(f,f,f,f,t,f,k=1,1)/),(/3,2/))
       data a5/t,f,t /        a6/f,f,f,f,t,f/
       integer ,dimension(3)::v=(/1,2,3/)
       integer ,dimension(2)::w=(/1,2/)
       private k
       interface check
         subroutine chk(value)
         use nnk
         integer          ::value(:)
         end subroutine chk
       end interface
       contains
         logical function cnt(i)
         cnt=.true.
         if (i==0)cnt=.false.
         end function
      end
      subroutine ssnn
       use nn
       interface
        subroutine xnn(a1,a2,a3,a4)
        use nn
        logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
        pointer a3,a4
        end subroutine xnn
       end interface
       logical(kind=-kv)::a1(3),a2(3,2),a3(:),a4(:,:)
       pointer a3,a4
       a1=a5;a2=a6
       allocate (a3(3),a4(3,2));a3=a5;a4=a6
      call        xnn(a1,a2,a3,a4)
      end subroutine
      subroutine chk(value)
       use nn
       integer          ::value(:)
       if (size(value)/=3)print *,'fail'
       if (     value(1)/=0)print *,'fail'
       if (     value(2)/=1)print *,'fail'
       if (     value(3)/=0)print *,'fail'
      end subroutine
      subroutine xnn(a1,a2,a3,a4)
       use nn
       logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
       pointer a3,a4
       callcheck(count(a2,dim=2)); callcheck(count(a2.or.a2,dim=2))
       callcheck(count(a4,dim=2)); callcheck(count(a4.or.a4,dim=2))
       callcheck(count(a6,dim=2)); callcheck(count(a6.or.a6,dim=2))
       callcheck(count(a8,dim=2)); callcheck(count(a8.or.a8,dim=2))
       callcheck(count(a2(v,w),dim=2))
       callcheck(count(a2(v,w).or.a2(v,w),dim=2))
       callcheck(count(a4(v,w),dim=2))
       callcheck(count(a4(v,w).or.a4(v,w),dim=2))
       callcheck(count(a6(v,w),dim=2))
       callcheck(count(a6(v,w).or.a6(v,w),dim=2))
       callcheck(count(a8(v,w),dim=2))
       callcheck(count(a8(v,w).or.a8(v,w),dim=2))
      end subroutine
      subroutine s1
      use mm;use nn
      call ssmm
      call ssnn
      end 
      subroutine ssmm
       use mm
         interface xmm
           subroutine xmmm(a1,a2,a3,a4)
            use mm
            logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
            pointer a3,a4
           end subroutine
         end interface 
       logical(kind=-kv)::a1(3),a2(3,3),a3(:),a4(:,:)
       pointer a3,a4
       a1=a5;a2=a6
       allocate (a3(3),a4(3,3));a3=a1;a4=a2
      call        xmm(a1,a2,a3,a4)
      end subroutine
      subroutine xmmm(a1,a2,a3,a4)
       use mm
       logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
       pointer a3,a4
       if(cnt(count(a1)))print *,'fail'; if(cnt(count(a1.or.a1)))print *,'fail'
       if(cnt(count(a2)))print *,'fail'; if(cnt(count(a2.or.a2)))print *,'fail'
       if(cnt(count(a3)))print *,'fail'; if(cnt(count(a3.or.a3)))print *,'fail'
       if(cnt(count(a4)))print *,'fail'; if(cnt(count(a4.or.a4)))print *,'fail'
       if(cnt(count(a5)))print *,'fail'; if(cnt(count(a5.or.a5)))print *,'fail'
       if(cnt(count(a6)))print *,'fail'; if(cnt(count(a6.or.a6)))print *,'fail'
       if(cnt(count(a7)))print *,'fail'; if(cnt(count(a7.or.a7)))print *,'fail'
       if(cnt(count(a8)))print *,'fail'; if(cnt(count(a8.or.a8)))print *,'fail'
       if(cnt(count(a1(v))))print *,'fail' 
       if(cnt(count(a1(v).or.a1(v))))print *,'fail'
       if(cnt(count(a2(v,v))))print *,'fail';
       if(cnt(count(a2(v,v).or.a2(v,v))))print *,'fail'
       if(cnt(count(a3(v))))print *,'fail';
       if(cnt(count(a3(v).or.a3(v))))print *,'fail'
       if(cnt(count(a4(v,v))))print *,'fail';
       if(cnt(count(a4(v,v).or.a4(v,v))))print *,'fail'
       if(cnt(count(a5(v))))print *,'fail';
       if(cnt(count(a5(v).or.a5(v))))print *,'fail'
       if(cnt(count(a6(v,v))))print *,'fail';
       if(cnt(count(a6(v,v).or.a6(v,v))))print *,'fail'
       if(cnt(count(a7(v))))print *,'fail';
       if(cnt(count(a7(v).or.a7(v))))print *,'fail'
       if(cnt(count(a8(v,v))))print *,'fail'; 
       if(cnt(count(a8(v,v).or.a8(v,v))))print *,'fail'
       if(cnt(count(a1,dim=1)))print *,'fail';
       if(cnt(count(a1.or.a1,dim=1)))print *,'fail'
       if(cnt(count(a2(:,2),dim=1)))print *,'fail';
       if(cnt(count(a2(:,2).or.a2(2,:),dim=1)))print *,'fail'
       if(cnt(count(a3,dim=1)))print *,'fail';
       if(cnt(count(a3.or.a3,dim=1)))print *,'fail'
       if(cnt(count(a4(:,2),dim=1)))print *,'fail';
       if(cnt(count(a4(:,2).or.a4(2,:),dim=1)))print *,'fail'
       if(cnt(count(a5,dim=1)))print *,'fail'; 
       if(cnt(count(a5.or.a5,dim=1)))print *,'fail'
       if(cnt(count(a6(:,2),dim=1)))print *,'fail';
       if(cnt(count(a6(:,2).or.a6(2,:),dim=1)))print *,'fail'
       if(cnt(count(a7,dim=1)))print *,'fail';
       if(cnt(count(a7.or.a7,dim=1)))print *,'fail'
       if(cnt(count(a8(:,2),dim=1)))print *,'fail';
       if(cnt(count(a8(:,2).or.a8(2,:),dim=1)))print *,'fail'
       if(cnt(count(a1(v),dim=1)))print *,'fail' 
       if(cnt(count(a1(v).or.a1(v),dim=1)))print *,'fail'
       if(cnt(count(a2(v,3),dim=1)))print *,'fail';
       if(cnt(count(a2(v,3).or.a2(3,v),dim=1)))print *,'fail'
       if(cnt(count(a3(v),dim=1)))print *,'fail';
       if(cnt(count(a3(v).or.a3(v),dim=1)))print *,'fail'
       if(cnt(count(a4(v,3),dim=1)))print *,'fail';
       if(cnt(count(a4(v,3).or.a4(3,v),dim=1)))print *,'fail'
       if(cnt(count(a5(v),dim=1)))print *,'fail';
       if(cnt(count(a5(v).or.a5(v),dim=1)))print *,'fail'
       if(cnt(count(a6(v,3),dim=1)))print *,'fail';
       if(cnt(count(a6(v,3).or.a6(v,3),dim=1)))print *,'fail'
       if(cnt(count(a7(v),dim=1)))print *,'fail';
       if(cnt(count(a7(v).or.a7(v),dim=1)))print *,'fail'
       if(cnt(count(a8(v,3),dim=1)))print *,'fail'; 
       if(cnt(count(a8(v,3).or.a8(3,v),dim=1)))print *,'fail'
       end subroutine

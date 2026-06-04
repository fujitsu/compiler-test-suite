c
c
      call s1
      print *,'pass'
      end
      module mm
       integer(kind=8),parameter::kv=-4
       logical(kind=-kv),parameter::t=.true.,f=.false.
       logical(kind=-kv),private::x5(3),x6(3,3)
       logical(kind=-kv),private::y5(3),y6(3,3)
       logical(kind=-kv)        ::a5(3),a6(3,3)
       logical(kind=-kv),parameter::a7(3)=(/f,f,f/)
       logical(kind=-kv),parameter::a8(3,3)=
     1               reshape((/(f,f,f,k=1,3)/),(/3,3/))
       data x5/f,f,f /        x6/f,f,f,f,f,f,f,f,f/
       equivalence (a5,x5,y5),(x6,a6,y6)
       integer ,dimension(3)::v=(/1,2,3/)
       private k
      end
      module nnk
       integer(kind=8),parameter::kv=-4
      end module
      module nn
       use nnk
       logical(kind=-kv),parameter::t=.true.,f=.false.
       logical(kind=-kv),private::x5(3),x6(3,2)
       logical(kind=-kv),private::y5(3),y6(3,2)
       logical(kind=-kv),public ::a5(3),a6(3,2)
       logical(kind=-kv),public,parameter::a7(3)=(/t,f,t/)
       logical(kind=-kv),public,parameter::a8(3,2)=
     1   reshape((/(f,f,f,f,t,f,k=1,1)/),(/3,2/))
       data x5/t,f,t /        x6/f,f,f,f,t,f/
       equivalence (a5,x5,y5),(x6,a6,y6)
       integer ,dimension(3)::v=(/1,2,3/)
       integer ,dimension(2)::w=(/1,2/)
       private k
       interface check
         subroutine chk(value)
         use nnk
         logical(kind=-kv)::value(:)
         end subroutine chk
       end interface
      end
      subroutine ssnn
       use nn,y5=>a5,y6=>a6,x5=>a7,x6=>a8
       interface
        subroutine xnn(a1,a2,a3,a4)
        use nn
        logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
        pointer a3,a4
        end subroutine xnn
       end interface
       logical(kind=-kv)::a1(3),a2(3,2),a3(:),a4(:,:)
       pointer a3,a4
       a1=y5;a2=y6
       allocate (a3(3),a4(3,2));a3=x5;a4=x6
      call        xnn(a1,a2,a3,a4)
      end subroutine
      subroutine chk(value)
       use nn
       logical(kind=-kv)::value(:)
       if (size(value)/=3)print *,'fail'
       if (     value(1))print *,'fail'
       if (.not.value(2))print *,'fail'
       if (     value(3))print *,'fail'
      end subroutine
      subroutine xnn(a1,a2,a3,a4)
       use nn
       logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
       pointer a3,a4
       callcheck(any(a2,dim=2)); callcheck(any(a2.or.a2,dim=2))
       callcheck(any(a4,dim=2)); callcheck(any(a4.or.a4,dim=2))
       callcheck(any(a6,dim=2)); callcheck(any(a6.or.a6,dim=2))
       callcheck(any(a8,dim=2)); callcheck(any(a8.or.a8,dim=2))
       callcheck(any(a2(v,w),dim=2))
       callcheck(any(a2(v,w).or.a2(v,w),dim=2))
       callcheck(any(a4(v,w),dim=2))
       callcheck(any(a4(v,w).or.a4(v,w),dim=2))
       callcheck(any(a6(v,w),dim=2))
       callcheck(any(a6(v,w).or.a6(v,w),dim=2))
       callcheck(any(a8(v,w),dim=2))
       callcheck(any(a8(v,w).or.a8(v,w),dim=2))
      end subroutine
      subroutine s1
      use mm;use nn
      call ssmm
      call ssnn
      end 
      subroutine ssmm
       use mm,y5=>a5,y6=>a6
         interface xmm
           subroutine xmmm(a1,a2,a3,a4)
            use mm
            logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
            pointer a3,a4
           end subroutine
         end interface 
       logical(kind=-kv)::a1(3),a2(3,3),a3(:),a4(:,:)
       pointer a3,a4
       a1=y5;a2=y6
       allocate (a3(3),a4(3,3));a3=a1;a4=a2
      call        xmm(a1,a2,a3,a4)
      end subroutine
      subroutine xmmm(a1,a2,a3,a4)
       use mm
       logical(kind=-kv)::a1(:),a2(:,:),a3(:),a4(:,:)
       pointer a3,a4
       if (any(a1))print *,'fail'; if (any(a1.or.a1))print *,'fail'
       if (any(a2))print *,'fail'; if (any(a2.or.a2))print *,'fail'
       if (any(a3))print *,'fail'; if (any(a3.or.a3))print *,'fail'
       if (any(a4))print *,'fail'; if (any(a4.or.a4))print *,'fail'
       if (any(a5))print *,'fail'; if (any(a5.or.a5))print *,'fail'
       if (any(a6))print *,'fail'; if (any(a6.or.a6))print *,'fail'
       if (any(a7))print *,'fail'; if (any(a7.or.a7))print *,'fail'
       if (any(a8))print *,'fail'; if (any(a8.or.a8))print *,'fail'
       if (any(a1(v)))print *,'fail' 
       if (any(a1(v).or.a1(v)))print *,'fail'
       if (any(a2(v,v)))print *,'fail';
       if (any(a2(v,v).or.a2(v,v)))print *,'fail'
       if (any(a3(v)))print *,'fail';
       if (any(a3(v).or.a3(v)))print *,'fail'
       if (any(a4(v,v)))print *,'fail';
       if (any(a4(v,v).or.a4(v,v)))print *,'fail'
       if (any(a5(v)))print *,'fail';
       if (any(a5(v).or.a5(v)))print *,'fail'
       if (any(a6(v,v)))print *,'fail';
       if (any(a6(v,v).or.a6(v,v)))print *,'fail'
       if (any(a7(v)))print *,'fail';
       if (any(a7(v).or.a7(v)))print *,'fail'
       if (any(a8(v,v)))print *,'fail'; 
       if (any(a8(v,v).or.a8(v,v)))print *,'fail'
       if (any(a1,dim=1))print *,'fail';
       if (any(a1.or.a1,dim=1))print *,'fail'
       if (any(a2(:,2),dim=1))print *,'fail';
       if (any(a2(:,2).or.a2(2,:),dim=1))print *,'fail'
       if (any(a3,dim=1))print *,'fail';
       if (any(a3.or.a3,dim=1))print *,'fail'
       if (any(a4(:,2),dim=1))print *,'fail';
       if (any(a4(:,2).or.a4(2,:),dim=1))print *,'fail'
       if (any(a5,dim=1))print *,'fail'; 
       if (any(a5.or.a5,dim=1))print *,'fail'
       if (any(a6(:,2),dim=1))print *,'fail';
       if (any(a6(:,2).or.a6(2,:),dim=1))print *,'fail'
       if (any(a7,dim=1))print *,'fail';
       if (any(a7.or.a7,dim=1))print *,'fail'
       if (any(a8(:,2),dim=1))print *,'fail';
       if (any(a8(:,2).or.a8(2,:),dim=1))print *,'fail'
       if (any(a1(v),dim=1))print *,'fail' 
       if (any(a1(v).or.a1(v),dim=1))print *,'fail'
       if (any(a2(v,3),dim=1))print *,'fail';
       if (any(a2(v,3).or.a2(3,v),dim=1))print *,'fail'
       if (any(a3(v),dim=1))print *,'fail';
       if (any(a3(v).or.a3(v),dim=1))print *,'fail'
       if (any(a4(v,3),dim=1))print *,'fail';
       if (any(a4(v,3).or.a4(3,v),dim=1))print *,'fail'
       if (any(a5(v),dim=1))print *,'fail';
       if (any(a5(v).or.a5(v),dim=1))print *,'fail'
       if (any(a6(v,3),dim=1))print *,'fail';
       if (any(a6(v,3).or.a6(v,3),dim=1))print *,'fail'
       if (any(a7(v),dim=1))print *,'fail';
       if (any(a7(v).or.a7(v),dim=1))print *,'fail'
       if (any(a8(v,3),dim=1))print *,'fail'; 
       if (any(a8(v,3).or.a8(3,v),dim=1))print *,'fail'
       end subroutine

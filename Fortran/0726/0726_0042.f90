      call test01()
      call test02()
      print *,'pass'
      end
      module m1
      contains
        subroutine sub01(a,ians)
         integer ,optional,pointer,dimension(:)::a
         if (present(a))a=1
         ians=1
        end subroutine
        subroutine sub02(a,ians)
         integer ,optional,dimension(:)::a
         if (present(a))a=2
         ians=2
        end subroutine
        subroutine sub03(a,ians)
         integer ,optional,dimension(*)::a
         if (present(a))a(1:20)=3
         ians=3
        end subroutine
        subroutine sub04(a,ians)
         integer ,optional,dimension(2:21)::a
         if (present(a))a=4
         ians=4
        end subroutine
        subroutine sub05(a,ians)
         integer ,optional,dimension(int(20))::a
         if (present(a))a=5
         ians=5
        end subroutine
        subroutine sub06(a,i,ians)
         integer ,optional,dimension(i)::a
         ians=6
         if (present(a))a=6
        end subroutine
        subroutine sub07(a,i,j,ians)
         integer ,optional,dimension(i:j)::a
         ians=7
         if (present(a))a=7
        end subroutine
        subroutine sub08(a,i,j,ians)
         integer ,optional,pointer,dimension(:)::a
         ians=8
         if (present(a))a=8
         i=7
         j=77
        end subroutine
      end
      subroutine test01()
      use m1
      integer,pointer,dimension(:) :: ia
      integer,target ,dimension(20):: it
      ia=>it
      it=10
      call sub01(ians=iii)
      if (iii.ne.1) write(6,*) "NG" 
      call sub01(ia,ians=iii)
      if (iii.ne.1) write(6,*) "NG" 
      call sub02(ians=iii)
      if (iii.ne.2) write(6,*) "NG" 
      call sub03(ians=iii)
      if (iii.ne.3) write(6,*) "NG" 
      call sub04(ians=iii)
      if (iii.ne.4) write(6,*) "NG" 
      call sub05(ians=iii)
      if (iii.ne.5) write(6,*) "NG" 
      call sub06(i=20,ians=iii)
      if (iii.ne.6) write(6,*) "NG" 
      call sub07(i=1,j=20,ians=iii)
      if (iii.ne.7) write(6,*) "NG" 
      call sub08(i=k,j=j,ians=iii)
      if (iii.ne.8) write(6,*) "NG" 
      if (k.ne.7) write(6,*) "NG" 
      if (j.ne.77) write(6,*) "NG" 
      end

       module m2
       contains
        subroutine sub01(a,ians)
         integer ,optional,pointer,dimension(:,:)::a
         if (present(a))a=1
         ians = 1
        end subroutine
        subroutine sub02(a,ians)
         integer ,optional,dimension(:,:)::a
         if (present(a))a=1
         ians = 2
        end subroutine
        subroutine sub03(a,ians)
         integer ,optional,dimension(20,*)::a
         if (present(a))a(:,1:20)=1
         ians = 3
        end subroutine
        subroutine sub04(a,ians)
         integer ,optional,dimension(20,2:21)::a
         if (present(a))a=1
         ians = 4
        end subroutine
        subroutine sub05(a,ians)
         integer ,optional,dimension(20,int(20))::a
         if (present(a))a=1
         ians = 5
        end subroutine
        subroutine sub06(a,i,ians)
         integer ,optional,dimension(20,i)::a
         if (present(a))a=1
         ians = 6
        end subroutine
        subroutine sub07(a,i,j,ians)
         integer ,optional,dimension(20,i:j)::a
         if (present(a))a=1
         ians = 7
        end subroutine
      end
      subroutine test02()
      use m2
      integer,pointer,dimension(:,:) :: ia
      integer,target ,dimension(20,20):: it
      ia=>it
      it=10
      call sub01(ians=iii)
      if (iii.ne.1) write(6,*) "NG"
      call sub01(ia,ians=iii)
      if (iii.ne.1) write(6,*) "NG"
      call sub02(ians=iii)
      if (iii.ne.2) write(6,*) "NG"
      call sub03(ians=iii)
      if (iii.ne.3) write(6,*) "NG"
      call sub04(ians=iii)
      if (iii.ne.4) write(6,*) "NG"
      call sub05(ians=iii)
      if (iii.ne.5) write(6,*) "NG"
      call sub06(i=20,ians=iii)
      if (iii.ne.6) write(6,*) "NG"
      call sub07(i=1,j=20,ians=iii)
      if (iii.ne.7) write(6,*) "NG"
      end

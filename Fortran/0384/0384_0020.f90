k=2
call sss(2,2,k)
print *,"pass"
       end
       subroutine sss(i,j,k)
      interface
       elemental subroutine sub(n1,n2,n3)
       intent(in) n1,n2,n3
       character :: n3
       end subroutine
       end interface
       dimension m1(2),m2(2)
       dimension mm1(2,i),mm2(2,j),mm3(2,k)
       character :: mm3
       k=2
       mm3='1'
       m1 =1
       m2=2
       mm1=1
       mm2=2
       call sub(m1,m2,mm3(1,1:k))
       call sub(m1,2,mm3(k-1:,1))
       call sub(mm1,mm2,mm3)
       call sub(mm1(k,k),mm2,mm3(1,1))
       call sub(mm1(k,k),mm2(2,2),mm3(1,1))
       call sub(mm1(k,k),mm2,mm3)
       call sub(mm1(k,k),mm2(2,2),mm3)
       call sub(mm1,mm2,mm3(1,1))
       call sub(mm1,mm2(2,2),mm3(1,1))
       call sub(mm1(k,:),mm2(2,2),mm3(1,1))
       call sub(mm1(k,k),mm2(2,:),mm3(1,1))
       call sub(mm1(k,k),mm2(2,2),mm3(1,:))
       call sub(mm1(k,:),mm2(2,:),mm3(1,:))
       call sub(mm1(:,k),mm2(2,2),mm3(1,1))
       call sub(mm1(k,k),mm2(:,2),mm3(1,1))
       call sub(mm1(k,1:),mm2(2,2),mm3(:,1))
       call sub(mm1(k,:),mm2(2,:),mm3(1,1))
       call sub(mm1(k,k),mm2(:,2),mm3(1,1))
       call sub(mm1(k,k),mm2(:,:),mm3(1,1))
       call sub(mm1(k,:),mm2(2,2),mm3(:,1))
       call sub(mm1(k,:),mm2(:,2),mm3(1,:))
       call sub(mm1(:,:),mm2(2,2),mm3(1,1))
       call sub(mm1(k,k),mm2(2,2),mm3(:,:))
       end subroutine

       elemental subroutine sub(n1,n2,n3)
       intent(in) n1,n2,n3
       character :: n3
       end subroutine

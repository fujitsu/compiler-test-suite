      integer::a(2,2,2,2),b(2,2,2,2)
      logical::l(1)
       interface
         subroutine sub(a,b,l)
           integer::a(:,:,:,:),b(:,:,:,:)
           logical::l(:)
         end subroutine
       end interface
      a=reshape( (/(i,i=1,16)/),(/2,2,2,2/) )
      call sub(a,b,l)
      if ( any( a/=reshape( (/(i,i=1,16)/),(/2,2,2,2/) ) ) ) print *,"fail"
      if ( l(1) ) print *,"fail"
      print *,'pass'
      end

      subroutine sub(a,b,l)
      integer::a(1:,1:,1:,1:),b(-1:,-1:,-1:,-1:)
      logical::l(:)

!$omp parallel firstprivate(a)
      b=a
!$omp workshare
      l(1) = any( pack(b,mask=b>10)/=(/11,12,13,14,15,16/) ) 
!$omp end workshare
!$omp end parallel

      end

call test01()
call test02()
print *,'pass'
end

subroutine test01()

!$omp parallel  default(private)
!$omp do 
      do i01 =1 ,10
         k01=0
         if (i01.ne.1) k01=0
         k01=k01+i01
      end do
!$omp end do
!$omp single
      do i02 =1 ,10
         k02=0
         if (i02.ne.1) k02=0
         k02=k02+i02
      end do
!$omp end single
!$omp sections
      do i03 =1 ,10
         k03=0
         if (i03.ne.1) k03=0
         k03=k03+i03
      end do
!$omp end sections
!$omp critical 
      do i04 =1 ,10
         k04=0
         if (i04.ne.1) k04=0
         k04=k04+i04
      end do
!$omp end critical 
!$omp master
      do i05 =1 ,10
         k05=0
         if (i05.ne.1) k05=0
         k05=k05+i05
      end do
!$omp end master

!$omp do ordered
     do i07 =1 ,1
!$omp ordered 
      do i06 =1 ,10
         k06=0
         if (i06.ne.1) k06=0
         k06=k06+i06
      end do
!$omp end ordered
      end do
!$omp end do
!$omp parallel 
      do i08 =1 ,10
         k08=0
         if (i08.ne.1) k08=0
         k08=k08+i08
      end do
!$omp end parallel 
!$omp parallel do
      do i08 =1 ,10
         k09=0
         if (i08.ne.1) k09=0
         k09=k09+i08
      end do
!$omp end paralleldo
!$omp parallel sections
      do i08 =1 ,10
         if (i08.ne.1) k09=0
         k09=k09+i08
      end do
!$omp end parallelsections
!$omp endparallel
      end
subroutine test02()
!$omp parallel  default(shared)
!$omp do 
      do i01 =1 ,10
         k01=0
         if (i01.ne.1) k01=0
         k01=k01+i01
      end do
!$omp end do
!$omp single
      do i02 =1 ,10
         k02=0
         if (i02.ne.1) k02=0
         k02=k02+i02
      end do
!$omp end single
!$omp sections
      do i03 =1 ,10
         k03=0
         if (i03.ne.1) k03=0
         k03=k03+i03
      end do
!$omp end sections
!$omp critical 
      do i04 =1 ,10
         k04=0
         if (i04.ne.1) k04=0
         k04=k04+i04
      end do
!$omp end critical 
!$omp master
      do i05 =1 ,10
         k05=0
         if (i05.ne.1) k05=0
         k05=k05+i05
      end do
!$omp end master

!$omp do ordered
     do i07 =1 ,1
!$omp ordered 
      do i06 =1 ,10
         k06=0
         if (i06.ne.1) k06=0
         k06=k06+i06
      end do
!$omp end ordered
      end do
!$omp end do
!$omp parallel 
      do i08 =1 ,10
         k08=0
         if (i08.ne.1) k08=0
         k08=k08+i08
      end do
!$omp end parallel 
!$omp parallel do
      do i09 =1 ,10
         k09=0
         if (i09.ne.1) k09=0
         k09=k09+i09
      end do
!$omp end paralleldo
!$omp parallel sections
      do i09 =1 ,10
         k09=0
         if (i09.ne.1) k09=0
         k09=k09+i09
      end do
!$omp end parallelsections
!$omp endparallel
      end

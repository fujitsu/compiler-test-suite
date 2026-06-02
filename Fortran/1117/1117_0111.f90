call test01()
print *,'pass'
end

subroutine test01()

ja=0
jj=0
!$omp parallel do firstprivate(i,ja,jj) lastprivate(ja,jj)
   do ido=1,10
assign 10 to i
      if (ido .ne. 1) goto i
      assign 20 to i
10    ja=ja+1
20    jj=jj+1
   end do
!$omp end parallel do

ja=0
jj=0
!$omp parallel sections firstprivate(ia,jj,i) lastprivate(ja,jj)
   do ido=1,10
      ja=0
assign 30 to i
      if (ido .ne. 1) goto i
      assign 40 to i
30    ja=ja+1
40    jj=jj+1
   end do
!$omp end parallel sections

ja=0
jj=0
!$omp do firstprivate(i) lastprivate(ja,jj)
   do ido=1,10
assign 50 to i
      ja=0
      jj=0
      if (ido .ne. 1) goto i
      assign 60 to i
50    ja=ja+1
60    jj=jj+1
   end do
!$omp end do

      end

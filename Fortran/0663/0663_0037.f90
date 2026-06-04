type ary
  real*4  AA(1:10,1:10)
  integer*4 IA(2:11,2:11)
endtype ary
parameter (ii=2,iii=3,iiii=-1)
type (ary) :: x
integer(4) i
x%AA=0.0_4
x%IA=0
i=iii-ii
x%AA(i,i)=1.0_4
x%IA(i+1,i+1)=1
x%AA(iii-ii:10:ii-1,iii-2:iii*iii+1:+1)=2.0_4
x%IA((ii*ii*ii)-(iii*2):iii*ii*2-1:iii-ii, iii-(1_4):11:-(ii+iiii+iiii+iiii))=2
do j=iii-ii,10
   do k=10,iii-ii,iiii
      if (x%AA(j,k).ne.2.0) print *,'fail'
      if (x%IA(j+1,k+1).ne.2) print *,'fail'
enddo
enddo
print *,'pass'
end

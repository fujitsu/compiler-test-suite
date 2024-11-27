integer ::iii(2)
integer,allocatable::a(:)
allocate(a(2))
do I=1,2
iii(I)=I
enddo
!$omp do lastprivate(a)
do I=1,iii(2)
iii(I)=I
a(I)=iii(I)+iii(I)
enddo
!$omp enddo
if (a(2).ne.4) write(6,*) "NG"
print *,"pass"
end

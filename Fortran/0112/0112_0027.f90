integer a(5,5),b(5,5),c(5,5)
data b/25*3/,c/25*5/

forall(i=1:5)
  idum=1
forall(j=1:5,b(i,j)>1)
  a(i,j)=c(i,j)+1
end forall
  idum=1
forall(j=1:5,b(i,j)>1)
  a(i,j)=c(i,j)+1
end forall
end forall

if(idum.ne.1)print*,'ng'
do i=1,5;do j=1,5
  if(a(i,j).ne.6)print*,'ng'
enddo;enddo

forall(i=1:5)
  idum=1
forall(j=1:5,b(i,j)>1)
  a(i,j)=c(i,j)+1
end forall
  idum=1
forall(j=1:5,b(i,j)>1)
  a(i,j)=c(i,j)+1
end forall
end forall

if(idum.ne.1)print*,'ng'
do i=1,5;do j=1,5
  if(a(i,j).ne.6)print*,'ng'
enddo;enddo
print*,'pass'

end

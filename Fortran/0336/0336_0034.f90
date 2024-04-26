integer*4,dimension(1:5,1:5,1:5)::a3,a4
do n1=1,5
do n2=1,5
do n3=1,5
  a3(n3,n2,n1)=n3+n2+n1+2
  a4(n3,n2,n1)=n3+n2+n1+3
enddo
enddo
enddo
write (6,*) a3
write (6,*) a4
end

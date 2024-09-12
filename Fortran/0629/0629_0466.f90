integer,parameter   ::n=1000
integer,dimension(n)::a
do i=1,n
 a(i)=i
enddo
print *,a(n)
end

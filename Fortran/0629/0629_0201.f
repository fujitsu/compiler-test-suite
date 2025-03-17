call sub1()
end

subroutine sub1()
integer*1 i1
integer  a(10)

j=1
forall(jj=1:1:1,i1=j:10:1,k=j:j:1)
a(i1)=i1
endforall
write(6,*) a

end subroutine

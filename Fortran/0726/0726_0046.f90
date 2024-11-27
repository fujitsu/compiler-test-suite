interface
subroutine sub1(arg1,arg2,arg3)
integer arg3
integer arg1(int(arg3),arg3)
integer arg2(:,:)
end subroutine
end interface
integer a(10,10)
integer b(10,10)
a=1
b=1
call sub1(a,b,10)
print *,'pass'
end
subroutine sub1(arg1,arg2,arg3)
integer a(10,10)
integer b(10,10)
integer c(10,10)
common /com1/ i,j
integer arr1(i,i)
integer arr2(i,i)
integer arg3
integer arg1(int(arg3),arg3)
integer arg2(:,:)
integer,pointer::parr(:,:)
integer,target ::tarr(10,10)
integer,allocatable::alc(:,:)
allocate(alc(10,10))
alc=1
arr1=1
arr2=1
tarr=1
parr=>tarr
a=1
b=2
c=matmul(a,b)
c=matmul(a,matmul(a,b))
c=matmul(matmul(a,b),b)
c=matmul(matmul(a,b),matmul(a,b))
c=matmul(arr1,arr2)
c=matmul(parr,a)
c=matmul(alc,a)
c=matmul(a,arg2)
c=matmul(arg1,a)
c=matmul(arg1,arg2)
c=matmul(arg1,matmul(arg1,arg2))
c=matmul(matmul(arg1,arg2),arg2)
c=matmul(matmul(arg1,arg2),matmul(arg1,arg2))
end

block data 
common /com1/ i,j
data i,j /10,10/
end

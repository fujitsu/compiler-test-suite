logical::f=.false.,T=.True.
call sub(F1=F,F2=F)
call sub(F1=F,F2=T)
call sub(F1=F,F2=F)
call sub(F1=F,F2=T)
call sub(F1=T,F2=F)
call sub(F1=T,F2=T)
call sub(F1=T,F2=F)
call sub(F1=T,F2=T)
call sub(F1=F     )
call sub(F1=T     )
call sub(     F2=F)
call sub(     F2=T)
call chk
print *,'pass'
contains
subroutine sub(f1,f2)
logical,optional:: f1,f2
write(1,*)0,minloc([1,2,3,4,4,3,2,1])
write(1,*)1,minloc([1,2,3,4,4,3,2,1],mask=f1,back=f2)  
write(1,*)2,minloc([1,2,3,4,4,3,2,1],mask=f1        )  
write(1,*)3,minloc([1,2,3,4,4,3,2,1]        ,back=f2)  
end subroutine
subroutine chk
integer:: n(2)
rewind 1
read(1,*) n; if (any(n/=[0,1])) print *,100,n
read(1,*) n; if (any(n/=[1,0])) print *,101,n
read(1,*) n; if (any(n/=[2,0])) print *,102,n
read(1,*) n; if (any(n/=[3,1])) print *,103,n
read(1,*) n; if (any(n/=[0,1])) print *,201,n
read(1,*) n; if (any(n/=[1,0])) print *,202,n
read(1,*) n; if (any(n/=[2,0])) print *,203,n
read(1,*) n; if (any(n/=[3,8])) print *,204,n
read(1,*) n; if (any(n/=[0,1])) print *,300,n
read(1,*) n; if (any(n/=[1,0])) print *,301,n
read(1,*) n; if (any(n/=[2,0])) print *,302,n
read(1,*) n; if (any(n/=[3,1])) print *,303,n
read(1,*) n; if (any(n/=[0,1])) print *,401,n
read(1,*) n; if (any(n/=[1,0])) print *,402,n
read(1,*) n; if (any(n/=[2,0])) print *,403,n
read(1,*) n; if (any(n/=[3,8])) print *,404,n
read(1,*) n; if (any(n/=[0,1])) print *,500,n
read(1,*) n; if (any(n/=[1,1])) print *,501,n
read(1,*) n; if (any(n/=[2,1])) print *,502,n
read(1,*) n; if (any(n/=[3,1])) print *,503,n
read(1,*) n; if (any(n/=[0,1])) print *,600,n
read(1,*) n; if (any(n/=[1,8])) print *,601,n
read(1,*) n; if (any(n/=[2,1])) print *,602,n
read(1,*) n; if (any(n/=[3,8])) print *,603,n
read(1,*) n; if (any(n/=[0,1])) print *,700,n
read(1,*) n; if (any(n/=[1,1])) print *,701,n
read(1,*) n; if (any(n/=[2,1])) print *,702,n
read(1,*) n; if (any(n/=[3,1])) print *,703,n
read(1,*) n; if (any(n/=[0,1])) print *,800,n
read(1,*) n; if (any(n/=[1,8])) print *,801,n
read(1,*) n; if (any(n/=[2,1])) print *,802,n
read(1,*) n; if (any(n/=[3,8])) print *,803,n
read(1,*) n; if (any(n/=[0,1])) print *,900,n
read(1,*) n; if (any(n/=[1,0])) print *,901,n
read(1,*) n; if (any(n/=[2,0])) print *,902,n
read(1,*) n; if (any(n/=[3,1])) print *,903,n
read(1,*) n; if (any(n/=[0,1])) print *,1000,n
read(1,*) n; if (any(n/=[1,1])) print *,1001,n
read(1,*) n; if (any(n/=[2,1])) print *,1002,n
read(1,*) n; if (any(n/=[3,1])) print *,1003,n
read(1,*) n; if (any(n/=[0,1])) print *,1100,n
read(1,*) n; if (any(n/=[1,1])) print *,1101,n
read(1,*) n; if (any(n/=[2,1])) print *,1102,n
read(1,*) n; if (any(n/=[3,1])) print *,1103,n
read(1,*) n; if (any(n/=[0,1])) print *,1200,n
read(1,*) n; if (any(n/=[1,8])) print *,1201,n
read(1,*) n; if (any(n/=[2,1])) print *,1202,n
read(1,*) n; if (any(n/=[3,8])) print *,1203,n
end subroutine
end

integer,parameter :: A(3,4)=reshape([0,3,1,-5,4,5,7,-1,6,7,2,7],[3,4])
logical,parameter :: M(3,4)=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.false.,.false.,.true.,.true.,.true.],[3,4])
integer :: res1(2)=FINDLOC (A, 0,MASK = M)
integer :: res2(2)=FINDLOC (A, 0, MASK = M, BACK = .TRUE.)
integer :: res3(2)=FINDLOC (A, -5,MASK = M)
integer :: res4(2)=FINDLOC (A, -5, MASK = M, BACK = .TRUE.)
integer :: res5(2)=FINDLOC (A, 6,MASK = M)
integer :: res6(2)=FINDLOC (A, 6, MASK = M, BACK = .TRUE.)
integer :: res7(2)=FINDLOC (A, 5,MASK = M)
integer :: res8(2)=FINDLOC (A, 5, MASK = M, BACK = .TRUE.)
if(ANY(res1 /= [1,1])) print *,101,res1
if(ANY(res2 /= [1,1])) print *,102,res2
if(ANY(res3 /= [1,2])) print *,103,res3
if(ANY(res4 /= [1,2])) print *,104,res4
if(ANY(res5 /= [0,0])) print *,105,res5
if(ANY(res6 /= [0,0])) print *,106,res6
if(ANY(res7 /= [3,2])) print *,107,res7
if(ANY(res8 /= [3,2])) print *,108,res8
print *,"pass"
end


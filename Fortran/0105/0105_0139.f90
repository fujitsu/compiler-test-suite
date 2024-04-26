subroutine sub(K,N,M,Q1,Q3,POP2,Poj1,Poj2)
complex(8):: Poj1(M,M),Poj2(M,M),Q1(M),Q3(M),POP2(M)
POP2(1:N)=MATMUL(Q1(K+1:K+N),transpose(Poj1(1:N,1:N))) + &
          MATMUL(Poj2(1:N,1:N),Q3(K+1:K+N))*0.5_8
end
parameter(MM=7)
complex(8):: Poj1(MM,MM),Poj2(MM,MM),Q1(MM),Q3(MM),POP2(MM)
Poj1=reshape((/(i,i=101,149)/),(/7,7/))
Poj2=reshape((/(i,i=201,249)/),(/7,7/))
POP2=reshape((/(i,i=21,27)/),(/7/))
Q1=reshape((/(i,i=31,37)/),(/7/))
Q3=reshape((/(i,i=41,47)/),(/7/))
K=1
N=5
M=MM
call sub(K,N,M,Q1,Q3,POP2,Poj1,Poj2)
if (any(abs((/POP2/)-(/&
43305._8,43585._8,43865._8,44145._8,44425._8,26._8,27._8&
/))>0.01))print *,'error'
print *,'pass'
end

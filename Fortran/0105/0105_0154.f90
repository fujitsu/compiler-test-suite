subroutine sub(K,N,NN,DX,HtLbt,HtLap,HtVbt,Y)
complex(8):: DX(NN),HtLbt(1:NN),HtLap(1:NN,1:NN),Y(NN),HtVbt(NN,NN)
DX(1:K)=HtLbt(1:K)+&
        MATMUL(Y(1:K),transpose(HtLap(1:K,1:K))) - &
        MATMUL(HtVbt(1:K,1:N),Y(K+1:K+N))
end
parameter(NN=11)
complex(8):: DX(NN),HtLbt(1:NN),HtLap(1:NN,1:NN),Y(NN),HtVbt(NN,NN)
DX=reshape((/(i,i=101,111)/),(/11/))
HtLbt=reshape((/(i,i=201,211)/),(/11/))
HtLap=reshape((/(i,i=201,321)/),(/11,11/))
HtVbt=reshape((/(i,i=301,421)/),(/11,11/))
Y=reshape((/(i,i=21,31)/),(/11/))
K=5
N=5
DX=0
call sub(K,N,NN,DX,HtLbt,HtLap,HtVbt,Y)
if (any(abs((/DX/)-(/&
-19374._8,-19398._8,-19422._8,-19446._8,-19470._8,0._8,0._8,0._8,0._8,0._8,0._8&
/))>0.01))print *,'error'
print *,'pass'
end

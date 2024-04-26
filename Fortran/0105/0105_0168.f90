subroutine sub(K,NN,DX,HtLap,Y,T,DY)
complex(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN),T,DY(NN)
DX(1:K)=DY(1:K)+ MATMUL(HtLap(1:K,1:K),Y(1:K))+DY(1:K)
end
parameter(NN=11)
complex(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN),T=-2.0_8,DY(NN)
DX=reshape((/(i,i=101,111)/),(/11/))
DY=DX
Y=reshape((/(i,i=131,141)/),(/11/))
HtLap=reshape((/(i,i=201,321)/),(/11,11/))
K=5
call sub(K,NN,DX,HtLap,Y,T,DY)
if (any(abs((/DX/)-(/&
148607._8,149274._8,149941._8,150608._8,151275._8,106._8,107._8,108._8,109._8,110._8,111._8&
/))>0.01))print *,'error'
print *,'pass'
end

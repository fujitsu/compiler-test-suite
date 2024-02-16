subroutine sub(K,NN,DX,HtLap,Y,T,DY)
complex(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN),T,DY(NN)
DX(1:K)=DX(1:K)+ MATMUL(HtLap(1:K,1:K),Y(1:K))*T- &
   MATMUL(HtLap(1:K,1:K),Y(1:K))
end
parameter(NN=11)
complex(8):: DX(NN),HtLap(1:NN,1:NN),Y(NN),T=-2.0_8,DY(NN)
DX=reshape((/(i,i=101,111)/),(/11/))
DY=reshape((/(i,i=101,111)/),(/11/))
Y=reshape((/(i,i=131,141)/),(/11/))
HtLap=reshape((/(i,i=201,321)/),(/11,11/))
K=5
call sub(K,NN,DX,HtLap,Y,T,DY)
if (any(abs((/DX/)-(/&
-445114,-447108,-449102,-451096,-453090,106,107,108,109,110,111&
/))>0.01))print *,'error'
print *,'pass'
end


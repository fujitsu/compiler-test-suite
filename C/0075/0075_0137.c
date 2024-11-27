#include <stdio.h>
typedef double  elementType;
typedef	unsigned	siteStateType;
struct	siteFrameSkeleton
{
	unsigned	lNum, right_lNum, left_lNum;
	siteStateType	*center00, *center10, *center01, *center11;
	siteStateType	*leftDown, *leftUp;
	siteStateType	*rightDown, *rightUp;
	siteStateType	*upLeft, *upRight;
	siteStateType	*downLeft, *downRight;
};
typedef	struct siteFrameSkeleton	siteFrameType;
struct	siteDataSkeleton
{
	unsigned	systemSize, trotterNum;
	unsigned	lSize, tSize;
	siteStateType	**siteTbl;
	siteFrameType	*frameArray;
	unsigned 	frameArraySize;
};
typedef	struct siteDataSkeleton 	siteDataType;
struct sinCosSkeleton{
	elementType	sin, cos;
};
typedef	struct sinCosSkeleton	sinCosType;
typedef	struct sinCosSkeleton	**sinCosTable;
struct calcTimeCorrlPackSkeleton {
	unsigned sizeLT, sizeLT2, tLength;
	unsigned **t_posNext;
	sinCosTable	sinCosTbl;
	sinCosType	**siteSpin;
	sinCosType	**siteChrg;
	elementType	*spinLine;
	elementType	*chrgLine;
};
typedef	struct calcTimeCorrlPackSkeleton	calcTimeCorrlPack;
void calcTimeCorrl( siteDataType *dataPtr, calcTimeCorrlPack *packPtr,
	elementType **spinCorrl, elementType **chrgCorrl )
{
	int 	up, down;
	unsigned 	t_pos, l_pos, tSize, lSize,
		t_dev, waveNum, tLength, **t_posNext;
	unsigned 	maxWaveNum, waveDim, trSize, sizeLT, sizeLT2;
	elementType	*spinLine, *chrgLine, tmpSpinCorrl, tmpChrgCorrl;
	elementType	spinSin, spinCos, chrgSin, chrgCos;
	sinCosTable	sinCosTbl;
	sinCosType	*sinCosPtr, *qSpinPtr, *qSpin2Ptr, **siteSpin;
	sinCosType	*qChrgPtr, *qChrg2Ptr, **siteChrg;
	siteStateType	**siteTbl, siteState;
	tSize = dataPtr->tSize;
	lSize = maxWaveNum = dataPtr->lSize;
	waveDim = maxWaveNum/2+1;
	trSize = dataPtr->trotterNum;
	sizeLT = packPtr->sizeLT;
	sizeLT2 = packPtr->sizeLT2;
	tLength = packPtr->tLength;
	siteTbl = dataPtr->siteTbl;
	spinLine = packPtr->spinLine;
	chrgLine = packPtr->chrgLine;
	siteSpin = packPtr->siteSpin;
	siteChrg = packPtr->siteChrg;
	sinCosTbl = packPtr->sinCosTbl;
	t_posNext = packPtr->t_posNext;
	for( t_pos=0; t_pos<tSize; t_pos++ ){
		for( l_pos=0; l_pos<lSize; l_pos++ ){
			siteState=siteTbl[t_pos][l_pos];
			up = ( (siteState& 0x0001 ) ? 1 : 0 );
			down = ( (siteState& 0x0002 ) ? 1 : 0 );
			spinLine[l_pos]=up-down;
			chrgLine[l_pos]=up+down;
		}
		for( waveNum=0; waveNum<waveDim; waveNum++ ){	
			sinCosPtr = sinCosTbl[waveNum];
			spinSin=spinCos=chrgSin=chrgCos=0.0;
			for( l_pos=0; l_pos<lSize; l_pos++, sinCosPtr++ ){
				spinSin += sinCosPtr->sin*spinLine[l_pos];
				spinCos += sinCosPtr->cos*spinLine[l_pos];
				chrgSin += sinCosPtr->sin*chrgLine[l_pos];
				chrgCos += sinCosPtr->cos*chrgLine[l_pos];
			}
			siteSpin[t_pos][waveNum].sin = spinSin;
			siteSpin[t_pos][waveNum].cos = spinCos;
		}
	}
	for( t_dev=0; t_dev<tLength; t_dev++ )
	for( waveNum=0; waveNum<waveDim; waveNum++ ){
		tmpSpinCorrl=tmpChrgCorrl=0.0;
		for( t_pos=0; t_pos<tSize; t_pos++ ){
			qSpinPtr = &(siteSpin[t_pos][waveNum]);
			qSpin2Ptr = &(siteSpin[t_posNext[t_dev][t_pos]][waveNum]);
			qChrgPtr = &(siteChrg[t_pos][waveNum]);
			qChrg2Ptr = &(siteChrg[t_posNext[t_dev][t_pos]][waveNum]);
			tmpSpinCorrl +=
				qSpin2Ptr->cos*qSpinPtr->cos + qSpin2Ptr->sin*qSpinPtr->sin;
			tmpChrgCorrl +=
				qChrg2Ptr->cos*qChrgPtr->cos + qChrg2Ptr->sin*qChrgPtr->sin;
		}
		tmpSpinCorrl/=sizeLT;
		spinCorrl[t_dev][waveNum] += tmpSpinCorrl;
	}
	return;
}
int foo()
{
}
int main()
{
	printf("*** (Compile Testing) OK ***") ;
}

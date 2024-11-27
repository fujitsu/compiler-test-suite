#include <stdlib.h>
#include <stdio.h>
#include <math.h>

struct point{
	int num1;
	int num2;
	char character1;
};
int main(){
	int i,j,k;
	int san1[10],san2[10],san3[10],sik1[10],
	sik2[10],sik3[10],ans1[10],ans2[10],ans3[10];
	int func1(int),func2(int),func3(int);
	struct point aaa[10],*bbb;
	for(i=0;i<10;i++){
		san1[i]=i*i/2;
		sik1[i]=i*i;
		ans1[i]=sik1[i]-i*i%2-san1[i];
		if(san1[i]==ans1[i]){
			printf("san1[%d] = %d , ans1[%d] = %d\n",i,san1[i],i,ans1[i]);
			continue;
		}
		else{
			printf("error 1 \n");
			return 0;
		}
	}
	for(i=0,j=0;i<10,j<10;i++,j++){
		san2[i]=i*i/2;
		sik2[j]=j*j;
		ans2[j]=sik2[j]-i*i%2-san2[i];
		if(san2[i]==ans2[j]){
			printf("san2[%d] = %d , ans2[%d] = %d\n",i,san2[i],j,ans2[j]);
			continue;
		}
		else{
			printf("error 2 \n");
			return 0;
		}
	}
	k=0;
	for(i=k,j=10;j>0;j--,i++){
		san3[k=i]=i*i/2;
		sik3[k]=k*k;
		ans3[i]=sik3[i]-i*i%2-san3[i];
		if(san3[k]==ans3[i]){
			printf("san3[%d] = %d , ans3[%d] = %d\n",k,san3[k],i,ans3[i]);
			continue;
		}
		else{
			printf("error 3 \n");
			return 0;
		}
	}
	i=0;
	for(i=func1(i);func2(i);i++){
		i=func3(i);
		if(i>=11){
			printf("error 4 \n");
			return 0;
		}
		else{
			continue;
		}
	}
	for(;0;){
		printf("error 5 \n");
		return 0;
	}
	i=100;
	for(i=0;i;){
		printf("error 6 \n");
		return 0;
	}
	if(i==0){
		printf("i = %d <--- OK\n",i);
	}
	else{
		printf("error 7\n");
		return 0;
	}
	for(i=0;i<10;i++){
		aaa[i].num1=10.0+i;
		aaa[i].num2=20.0+i;
		if(i<=5){
			aaa[i].character1='x';
		}
		else if(i==8){
			aaa[i].character1='y';
		}
		else{
			aaa[i].character1='z';
		}
	}
	bbb=aaa;
	bbb->character1='a';
	(++bbb)->character1='b';
	if(aaa[0].character1=='a' && aaa[1].character1=='b'){
		printf("aaa[0].character1 = %c <----- OK\n",aaa[0].character1);
		printf("aaa[1].character1 = %c <----- OK\n",aaa[1].character1);
	}
	else{
		printf("error 8\n");
		return 0;
	}
	exit (0);
}
int func1(int j){
	return j;
}
int func2(int j){
	if(j==10){
		return 0;
	}
	else{
		return 1;
	}
}
int func3(int j){
	double p=0,q=0;
	p=(q=j);
	j=p;
	return j;
}

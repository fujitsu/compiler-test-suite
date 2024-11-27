#include <stdio.h>
#include <math.h>
#include <stdlib.h>
int print_f4 (char *s, float *a, int len);

int main() {
	static float  a[3][3][3][3][3][3][3],
	up1[3],up2[4][4],up3[3][3][3],up4[3][3][3][3],
	up5[4][4][4][4][4],up6[3][3][3][3][3][3],
	lw1[3],lw2[4][4],lw3[3][3][3],lw4[3][3][3][3],
	lw5[4][4][4][4][4],lw6[3][3][3][3][3][3];
	int i1,i2,i3,i4,i5,i6,i7;
	int init_f4(float *a, int len, float d);
	init_f4(a,2187,0.7);
	init_f4(up1,3,0.1);
	init_f4(up2,16,0.2);
	init_f4(up3,27,0.3);
	init_f4(up4,81,0.4);
	init_f4(up5,1024,0.5);
	init_f4(up6,729,0.6);
	init_f4(lw1,3,0.1);
	init_f4(lw2,16,0.2);
	init_f4(lw3,27,0.3);
	init_f4(lw4,81,0.4);
	init_f4(lw5,1024,0.5);
	init_f4(lw6,729,0.6);
	
	
	
	for( i7=0;i7<3;i7+=1){ 
		
		if(up1[i7]==2.0 ) goto L1;
		up1[i7]= up1[i7]*2.0;
L1:
		; 
		for( i6=0;i6<3;i6+=1){ 
			
			if(up2[i6][i7]==2.0) goto L2;
			up2[i6][i7]= up2[i6][i7]*2.0;
L2:
			; 
			for( i5=0;i5<3;i5+=1){ 
				
				if(up3[i7][i6][i5]==2.0) goto L3;
				up3[i7][i6][i5]= up3[i7][i6][i5]*2.0;
L3:
				; 
				for( i4=0;i4<3;i4+=1){ 
					
					if(up4[i4][i5][i6][i7]==2.0) goto L4;
					up4[i4][i5][i6][i7]= up4[i4][i5][i6][i7]*2.0;
L4:
					; 
					for( i3=0;i3<3;i3+=1){ 
						
						if(up5[i3][i4][i5][i6][i7]==2.0) goto L5;
						up5[i3][i4][i5][i6][i7]= up5[i3][i4][i5][i6][i7]*2.0;
L5:
						; 
						for( i2=0;i2<3;i2+=1){ 
							
							if(up6[i7][i6][i5][i4][i3][i2]==2.0) goto L6;
							up6[i7][i6][i5][i4][i3][i2]=
							    up6[i7][i6][i5][i4][i3][i2]*2.0;
L6:
							; 
							for( i1=0;i1<3;i1+=1){ 
								
								if(a[i1][i2][i3][i4][i5][i6][i7]==2.0) goto L10;
								a[i1][i2][i3][i4][i5][i6][i7]=
								    a[i1][i2][i3][i4][i5][i6][i7]*2.0;
L10:
								; 
							}
							
							if(lw6[i7][i6][i5][i4][i3][i2]==2.0) goto L20;
							lw6[i7][i6][i5][i4][i3][i2]=lw6[i7][i6][i5][i4][i3][i2] +
							    up6[i7][i6][i5][i4][i3][i2];
L20:
							;
							;
						}
						
						if(lw5[i3][i4][i5][i6][i7]==2.0) goto L30;
						lw5[i3][i4][i5][i6][i7]=
						    lw5[i3][i4][i5][i6][i7] + up5[i3][i4][i5][i6][i7];
L30:
						;
						;
					}
					
					if(lw4[i4][i5][i6][i7]==2.0) goto L40;
					lw4[i4][i5][i6][i7]=
					    lw4[i4][i5][i6][i7]+up4[i4][i5][i6][i7];
L40:
					;
					;
				}
				
				if(lw3[i7][i6][i5]==2.0) goto L50;
				lw3[i7][i6][i5]=lw3[i7][i6][i5]+up3[i7][i6][i5];
L50:
				;
				;
			}
			
			if(lw2[i6][i7]==2.0) goto L60;
			lw2[i6][i7]=lw2[i6][i7]+up2[i6][i7];
L60:
			;
			;
		}
		if(lw1[i7]==2.0) goto L70;
		lw1[i7]=lw1[i7]+up1[i7];
L70:
		;
		;
	}
	print_f4("a= ",a,2187);
	print_f4("up1= ",up1,3);
	print_f4("up2= ",up2,16);
	print_f4("up3= ",up3,27);
	print_f4("up4= ",up4,81);
	print_f4("up5= ",up5,1024);
	print_f4("up6= ",up6,729);
	print_f4("lw1= ",lw1,3);
	print_f4("lw2= ",lw2,16);
	print_f4("lw3= ",lw3,27);
	print_f4("lw4= ",lw4,81);
	print_f4("lw5= ",lw5,1024);
	print_f4("lw6= ",lw6,729);
	exit (0);
}
int init_f4 (float *a, int len, float d)
{
	int  i;
	for(i=0;i<len;i++) {
		a[i]=d;
	}
	return 0;
}
int print_f4 (char *s, float *a, int len)
{
	int i,t=0;
	printf("%s",s);
	for(i=0;i<len;i++) {
		printf(" %f",*a);
		if(++t>5) {
			printf("\n"); 
			t=0; 
		}
		a=a+1;
	}
	printf("\n");
	return 0;
}

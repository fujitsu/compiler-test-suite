#include <stdio.h>
#include <stdlib.h>
void v1 (signed int, unsigned char, signed int);
void (*v2) (signed int, unsigned char, signed int) = v1;
extern unsigned int v3 (signed short, unsigned char);
extern unsigned int (*v4) (signed short, unsigned char);
extern signed char v5 (unsigned int, signed short);
extern signed char (*v6) (unsigned int, signed short);
extern unsigned short v7 (unsigned int, unsigned short, signed char, unsigned int);
extern unsigned short (*v8) (unsigned int, unsigned short, signed char, unsigned int);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
extern unsigned short v11 (signed char, unsigned short, unsigned short);
extern unsigned short (*v12) (signed char, unsigned short, unsigned short);
extern unsigned short v13 (signed char);
extern unsigned short (*v14) (signed char);
extern unsigned short v15 (signed int, unsigned int, signed int, signed int);
extern unsigned short (*v16) (signed int, unsigned int, signed int, signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern void v21 (unsigned char);
extern void (*v22) (unsigned char);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (signed char, unsigned short, unsigned int, unsigned int);
extern signed short (*v28) (signed char, unsigned short, unsigned int, unsigned int);
extern signed int v29 (unsigned short, signed int);
extern signed int (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
signed short v32 = 1;
unsigned char v31 = 4;

void v1 (signed int v34, unsigned char v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 1U;
signed char v38 = 2;
signed int v37 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v40;
signed short v41;
signed char v42;
v40 = 0U + 0U;
v41 = -4 - 3;
v42 = v5 (v40, v41);
history[history_index++] = (int)v42;
}
break;
case 7: 
{
signed short v43;
unsigned char v44;
unsigned int v45;
v43 = 2 + -3;
v44 = v35 - v35;
v45 = v3 (v43, v44);
history[history_index++] = (int)v45;
}
break;
case 13: 
return;
case 16: 
return;
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v48;
unsigned char v49;
signed int v50;
v48 = v33 + -1;
v49 = 1 + 6;
v50 = 3 - v33;
v1 (v48, v49, v50);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, signed int);
extern signed char (*v2) (signed short, signed int);
extern unsigned int v3 (unsigned char, signed short, signed int, unsigned short);
extern unsigned int (*v4) (unsigned char, signed short, signed int, unsigned short);
extern unsigned int v7 (unsigned int, unsigned short, signed short, unsigned int);
extern unsigned int (*v8) (unsigned int, unsigned short, signed short, unsigned int);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern unsigned char v11 (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char (*v12) (unsigned short, signed int, unsigned int, unsigned short);
extern unsigned char v13 (signed int, signed int, unsigned char, unsigned short);
extern unsigned char (*v14) (signed int, signed int, unsigned char, unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v19 (signed short, signed short, unsigned int);
extern signed short (*v20) (signed short, signed short, unsigned int);
extern signed char v21 (signed int, signed short, unsigned int, unsigned int);
extern signed char (*v22) (signed int, signed short, unsigned int, unsigned int);
extern unsigned char v23 (signed char, signed short);
extern unsigned char (*v24) (signed char, signed short);
signed short v25 (signed char, signed int, unsigned int, signed short);
signed short (*v26) (signed char, signed int, unsigned int, signed short) = v25;
extern unsigned char v27 (unsigned int, signed int, unsigned short, signed int);
extern unsigned char (*v28) (unsigned int, signed int, unsigned short, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed char v32 = -3;
signed short v31 = -1;

signed short v25 (signed char v34, signed int v35, unsigned int v36, signed short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 4;
signed short v39 = 1;
unsigned char v38 = 3;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v41;
signed int v42;
unsigned short v43;
signed int v44;
unsigned char v45;
v41 = 4U - 7U;
v42 = v35 - -1;
v43 = v40 + v40;
v44 = -4 - -2;
v45 = v27 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 12: 
return v37;
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
signed short v48;
signed int v49;
signed char v50;
v48 = -2 + -4;
v49 = -3 + -2;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

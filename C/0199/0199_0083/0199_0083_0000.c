#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed char);
extern signed char (*v2) (signed char, signed char);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed int, unsigned short);
extern void (*v6) (signed int, signed short, signed int, unsigned short);
extern unsigned int v7 (unsigned short, signed char, unsigned short, signed int);
extern unsigned int (*v8) (unsigned short, signed char, unsigned short, signed int);
unsigned int v11 (signed short, unsigned char, unsigned short, unsigned char);
unsigned int (*v12) (signed short, unsigned char, unsigned short, unsigned char) = v11;
extern void v13 (signed int, signed char, signed char);
extern void (*v14) (signed int, signed char, signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed short v25 (unsigned short, unsigned char);
extern signed short (*v26) (unsigned short, unsigned char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 2;
unsigned char v32 = 6;
signed int v31 = 0;

unsigned int v11 (signed short v34, unsigned char v35, unsigned short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 7U;
signed char v39 = -1;
signed char v38 = -1;
trace++;
switch (trace)
{
case 4: 
{
signed int v41;
signed short v42;
signed int v43;
unsigned short v44;
v41 = -4 + 0;
v42 = -1 - -1;
v43 = 0 + -2;
v44 = 0 - v36;
v5 (v41, v42, v43, v44);
}
break;
case 11: 
return 1U;
case 14: 
return v40;
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
signed char v47;
signed char v48;
signed char v49;
v47 = v33 + 2;
v48 = v33 + -3;
v49 = v1 (v47, v48);
history[history_index++] = (int)v49;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

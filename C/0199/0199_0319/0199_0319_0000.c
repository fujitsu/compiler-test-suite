#include <stdio.h>
#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern void v3 (void);
extern void (*v4) (void);
extern signed short v5 (unsigned short, signed short);
extern signed short (*v6) (unsigned short, signed short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (unsigned short, signed short, signed int);
extern signed int (*v10) (unsigned short, signed short, signed int);
unsigned short v11 (unsigned int, unsigned int, unsigned char, unsigned char);
unsigned short (*v12) (unsigned int, unsigned int, unsigned char, unsigned char) = v11;
extern unsigned short v13 (unsigned char, unsigned char, signed int);
extern unsigned short (*v14) (unsigned char, unsigned char, signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned int v21 (signed short, unsigned char);
extern unsigned int (*v22) (signed short, unsigned char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern void v27 (unsigned int, signed int);
extern void (*v28) (unsigned int, signed int);
extern unsigned short v29 (signed int, unsigned int);
extern unsigned short (*v30) (signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed short v32 = -3;
unsigned int v31 = 4U;

unsigned short v11 (unsigned int v34, unsigned int v35, unsigned char v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = -4;
signed char v39 = 3;
unsigned int v38 = 2U;
trace++;
switch (trace)
{
case 5: 
{
signed short v41;
unsigned char v42;
unsigned int v43;
v41 = v40 + -2;
v42 = v36 + v36;
v43 = v21 (v41, v42);
history[history_index++] = (int)v43;
}
break;
case 7: 
{
signed int v44;
unsigned short v45;
v44 = -1 - -1;
v45 = v25 (v44);
history[history_index++] = (int)v45;
}
break;
case 9: 
return 4;
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
v1 ();
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

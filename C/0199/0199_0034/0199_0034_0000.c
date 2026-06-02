#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned short);
extern unsigned int (*v2) (unsigned short, signed short, unsigned short);
extern unsigned char v3 (unsigned int, unsigned int);
extern unsigned char (*v4) (unsigned int, unsigned int);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern unsigned short v9 (unsigned char);
extern unsigned short (*v10) (unsigned char);
extern void v11 (signed short, unsigned int, signed int);
extern void (*v12) (signed short, unsigned int, signed int);
unsigned short v13 (unsigned short, signed char);
unsigned short (*v14) (unsigned short, signed char) = v13;
extern signed short v15 (unsigned char);
extern signed short (*v16) (unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
signed char v19 (unsigned short, signed int, signed char);
signed char (*v20) (unsigned short, signed int, signed char) = v19;
extern signed short v21 (signed short, unsigned short, unsigned int, signed short);
extern signed short (*v22) (signed short, unsigned short, unsigned int, signed short);
extern unsigned int v23 (signed char, unsigned char, signed short, unsigned char);
extern unsigned int (*v24) (signed char, unsigned char, signed short, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern void v29 (signed char, signed int, unsigned int);
extern void (*v30) (signed char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -2;
unsigned char v32 = 3;
unsigned short v31 = 7;

signed char v19 (unsigned short v34, signed int v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 0;
unsigned int v38 = 7U;
unsigned short v37 = 1;
trace++;
switch (trace)
{
case 9: 
return v36;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v40, signed char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = -4;
unsigned char v43 = 7;
signed short v42 = 0;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v45;
v45 = v17 ();
history[history_index++] = (int)v45;
}
break;
case 3: 
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
unsigned short v48;
signed short v49;
unsigned short v50;
unsigned int v51;
v48 = 3 - v31;
v49 = -4 - v33;
v50 = 6 - v31;
v51 = v1 (v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

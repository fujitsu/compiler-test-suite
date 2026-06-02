#include <stdio.h>
#include <stdlib.h>
static void v1 (signed int, unsigned char, unsigned char, unsigned short);
static void (*v2) (signed int, unsigned char, unsigned char, unsigned short) = v1;
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned short v11 (unsigned short);
extern unsigned short (*v12) (unsigned short);
extern void v13 (unsigned short, unsigned int, unsigned int);
extern void (*v14) (unsigned short, unsigned int, unsigned int);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern void v19 (unsigned char, signed char, signed char);
extern void (*v20) (unsigned char, signed char, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed short v23 (unsigned int);
extern signed short (*v24) (unsigned int);
extern signed char v27 (unsigned int, unsigned short, unsigned short, signed char);
extern signed char (*v28) (unsigned int, unsigned short, unsigned short, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -4;
signed short v32 = -2;
signed short v31 = 2;

static void v1 (signed int v34, unsigned char v35, unsigned char v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 1;
signed int v39 = -3;
unsigned char v38 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v41;
v41 = v21 ();
history[history_index++] = (int)v41;
}
break;
case 2: 
{
unsigned short v42;
unsigned short v43;
v42 = 7 + 3;
v43 = v11 (v42);
history[history_index++] = (int)v43;
}
break;
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
signed int v46;
unsigned char v47;
unsigned char v48;
unsigned short v49;
v46 = -2 - 0;
v47 = 3 - 1;
v48 = 6 + 1;
v49 = 0 - 7;
v1 (v46, v47, v48, v49);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

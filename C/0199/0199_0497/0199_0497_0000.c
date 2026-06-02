#include <stdio.h>
#include <stdlib.h>
static void v1 (signed short, signed short, signed int);
static void (*v2) (signed short, signed short, signed int) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (signed short);
extern unsigned int (*v6) (signed short);
extern signed char v7 (signed char, unsigned short);
extern signed char (*v8) (signed char, unsigned short);
signed int v9 (unsigned int, unsigned short, signed char, unsigned short);
signed int (*v10) (unsigned int, unsigned short, signed char, unsigned short) = v9;
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern signed int v13 (unsigned short, signed char, unsigned char, unsigned char);
extern signed int (*v14) (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned short v15 (signed short, unsigned char, unsigned int);
extern unsigned short (*v16) (signed short, unsigned char, unsigned int);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
extern void v29 (signed int, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed char v32 = 0;
unsigned short v31 = 0;

signed int v9 (unsigned int v34, unsigned short v35, signed char v36, unsigned short v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -2;
unsigned int v39 = 2U;
unsigned int v38 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v1 (signed short v41, signed short v42, signed int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed int v46 = 1;
unsigned short v45 = 3;
unsigned int v44 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v47;
signed char v48;
v47 = v44 - v44;
v48 = v3 (v47);
history[history_index++] = (int)v48;
}
break;
case 14: 
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
signed short v51;
signed short v52;
signed int v53;
v51 = 3 - 1;
v52 = -3 - -1;
v53 = 3 + -4;
v1 (v51, v52, v53);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

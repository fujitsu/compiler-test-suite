#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed short, unsigned char, unsigned short);
static unsigned char (*v2) (signed short, unsigned char, unsigned short) = v1;
extern unsigned int v3 (signed char, signed short);
extern unsigned int (*v4) (signed char, signed short);
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern unsigned char v7 (unsigned char, signed short, unsigned int, signed int);
extern unsigned char (*v8) (unsigned char, signed short, unsigned int, signed int);
extern signed int v9 (unsigned short, unsigned char);
extern signed int (*v10) (unsigned short, unsigned char);
extern void v11 (signed short, unsigned int);
extern void (*v12) (signed short, unsigned int);
unsigned short v13 (unsigned short, unsigned char);
unsigned short (*v14) (unsigned short, unsigned char) = v13;
extern unsigned short v15 (signed short, signed char);
extern unsigned short (*v16) (signed short, signed char);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern signed short v19 (signed int, unsigned int, unsigned short);
extern signed short (*v20) (signed int, unsigned int, unsigned short);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed int, unsigned char, unsigned int);
extern unsigned int (*v24) (signed int, unsigned char, unsigned int);
extern unsigned char v25 (unsigned short, signed char, unsigned char);
extern unsigned char (*v26) (unsigned short, signed char, unsigned char);
extern unsigned short v27 (signed char, signed short, signed int);
extern unsigned short (*v28) (signed char, signed short, signed int);
extern unsigned short v29 (signed int, unsigned char, signed short, unsigned int);
extern unsigned short (*v30) (signed int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
signed short v32 = -1;
signed char v31 = 2;

unsigned short v13 (unsigned short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed char v38 = 0;
unsigned char v37 = 0;
unsigned char v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed short v39, unsigned char v40, unsigned short v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed char v44 = 3;
unsigned short v43 = 4;
unsigned int v42 = 0U;
trace++;
switch (trace)
{
case 0: 
{
signed short v45;
signed char v46;
unsigned short v47;
v45 = 2 + 0;
v46 = v44 + -4;
v47 = v15 (v45, v46);
history[history_index++] = (int)v47;
}
break;
case 12: 
return 7;
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
signed short v50;
unsigned char v51;
unsigned short v52;
unsigned char v53;
v50 = v32 + 3;
v51 = 0 + 4;
v52 = 0 - 1;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

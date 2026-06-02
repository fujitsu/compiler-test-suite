#include <stdio.h>
#include <stdlib.h>
static signed char v1 (unsigned int, unsigned short, unsigned int);
static signed char (*v2) (unsigned int, unsigned short, unsigned int) = v1;
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
extern signed char v5 (unsigned int);
extern signed char (*v6) (unsigned int);
extern unsigned int v7 (signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, unsigned int, unsigned char);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern unsigned short v11 (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned char v15 (signed short, unsigned char);
unsigned char (*v16) (signed short, unsigned char) = v15;
extern unsigned char v17 (signed short, signed short);
extern unsigned char (*v18) (signed short, signed short);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned short v21 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v22) (unsigned char, unsigned short, unsigned int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed short, signed char, unsigned char);
extern signed int (*v26) (signed short, signed char, unsigned char);
extern signed char v27 (unsigned int, unsigned char);
extern signed char (*v28) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed short v32 = 3;
signed int v31 = -2;

unsigned char v15 (signed short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 4;
unsigned char v37 = 0;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed char v1 (unsigned int v39, unsigned short v40, unsigned int v41)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned int v44 = 2U;
unsigned int v43 = 7U;
unsigned int v42 = 1U;
trace++;
switch (trace)
{
case 0: 
{
signed short v45;
signed short v46;
unsigned char v47;
v45 = 3 - 0;
v46 = -3 - -3;
v47 = v17 (v45, v46);
history[history_index++] = (int)v47;
}
break;
case 14: 
return -4;
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
unsigned int v50;
unsigned short v51;
unsigned int v52;
signed char v53;
v50 = 5U - 4U;
v51 = 0 - 0;
v52 = 2U - v33;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

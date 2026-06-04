#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned int, unsigned short, signed char, signed char);
static unsigned int (*v2) (unsigned int, unsigned short, signed char, signed char) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, unsigned int, unsigned char);
extern void (*v6) (signed short, unsigned int, unsigned char);
unsigned short v7 (unsigned int, signed char);
unsigned short (*v8) (unsigned int, signed char) = v7;
extern unsigned short v9 (unsigned int);
extern unsigned short (*v10) (unsigned int);
extern signed short v11 (unsigned int, signed short, unsigned int, unsigned int);
extern signed short (*v12) (unsigned int, signed short, unsigned int, unsigned int);
extern unsigned int v13 (signed char, signed int, signed int);
extern unsigned int (*v14) (signed char, signed int, signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern signed char v17 (signed char);
extern signed char (*v18) (signed char);
extern signed int v19 (signed short, signed int, signed int, signed char);
extern signed int (*v20) (signed short, signed int, signed int, signed char);
extern signed char v21 (unsigned short, unsigned short);
extern signed char (*v22) (unsigned short, unsigned short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (signed int, signed short);
extern void (*v28) (signed int, signed short);
extern unsigned char v29 (unsigned char, unsigned char);
extern unsigned char (*v30) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
unsigned char v32 = 5;
unsigned short v31 = 0;

unsigned short v7 (unsigned int v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 6U;
signed short v37 = -4;
unsigned int v36 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned int v39, unsigned short v40, signed char v41, signed char v42)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -4;
unsigned int v44 = 1U;
signed short v43 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v46;
signed int v47;
signed int v48;
signed char v49;
signed int v50;
v46 = v43 - v43;
v47 = v45 + -4;
v48 = v45 - v45;
v49 = v42 - -3;
v50 = v19 (v46, v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 14: 
return 1U;
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
unsigned int v53;
unsigned short v54;
signed char v55;
signed char v56;
unsigned int v57;
v53 = 4U - 4U;
v54 = v31 + 5;
v55 = 1 + -1;
v56 = 3 - 3;
v57 = v1 (v53, v54, v55, v56);
history[history_index++] = (int)v57;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

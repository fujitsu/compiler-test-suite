#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (void);
static unsigned int (*v2) (void) = v1;
extern signed int v3 (unsigned short, unsigned int);
extern signed int (*v4) (unsigned short, unsigned int);
extern unsigned char v5 (unsigned char, signed int, unsigned char, signed char);
extern unsigned char (*v6) (unsigned char, signed int, unsigned char, signed char);
extern signed short v7 (unsigned char);
extern signed short (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed int, signed char);
extern signed int (*v10) (unsigned int, signed int, signed char);
signed int v11 (unsigned int, unsigned short, signed short);
signed int (*v12) (unsigned int, unsigned short, signed short) = v11;
extern signed short v13 (unsigned int, unsigned short, signed int, unsigned int);
extern signed short (*v14) (unsigned int, unsigned short, signed int, unsigned int);
extern void v15 (unsigned char, unsigned int, unsigned char);
extern void (*v16) (unsigned char, unsigned int, unsigned char);
unsigned char v17 (void);
unsigned char (*v18) (void) = v17;
extern signed short v19 (unsigned int);
extern signed short (*v20) (unsigned int);
extern unsigned int v21 (signed char, unsigned int, unsigned short);
extern unsigned int (*v22) (signed char, unsigned int, unsigned short);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed int v25 (unsigned short, unsigned char, signed char, unsigned int);
extern signed int (*v26) (unsigned short, unsigned char, signed char, unsigned int);
extern unsigned char v27 (unsigned char, signed short, unsigned char);
extern unsigned char (*v28) (unsigned char, signed short, unsigned char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed char v32 = -1;
unsigned short v31 = 6;

unsigned char v17 (void)
{
{
for (;;) {
signed char v36 = 1;
unsigned char v35 = 0;
unsigned short v34 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (unsigned int v37, unsigned short v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = -2;
signed char v41 = 2;
unsigned char v40 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed char v43;
unsigned int v44;
unsigned short v45;
unsigned int v46;
v43 = 1 + v41;
v44 = 2U - 7U;
v45 = 0 - 5;
v46 = v21 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 10: 
{
signed char v47;
unsigned int v48;
unsigned short v49;
unsigned int v50;
v47 = v41 - v41;
v48 = 0U - v37;
v49 = 7 - v38;
v50 = v21 (v47, v48, v49);
history[history_index++] = (int)v50;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

static unsigned int v1 (void)
{
{
for (;;) {
unsigned char v53 = 3;
unsigned char v52 = 7;
signed int v51 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v54;
unsigned int v55;
signed int v56;
v54 = 2 + 0;
v55 = 2U - 5U;
v56 = v3 (v54, v55);
history[history_index++] = (int)v56;
}
break;
case 14: 
return 6U;
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
unsigned int v59;
v59 = v1 ();
history[history_index++] = (int)v59;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

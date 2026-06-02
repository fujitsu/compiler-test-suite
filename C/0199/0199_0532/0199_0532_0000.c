#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned char);
static unsigned short (*v2) (unsigned char) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed short v5 (signed char, unsigned int);
extern signed short (*v6) (signed char, unsigned int);
extern unsigned char v7 (unsigned int, unsigned short);
extern unsigned char (*v8) (unsigned int, unsigned short);
static unsigned int v9 (signed int, signed short, unsigned short);
static unsigned int (*v10) (signed int, signed short, unsigned short) = v9;
signed int v11 (unsigned char);
signed int (*v12) (unsigned char) = v11;
extern unsigned int v13 (unsigned short);
extern unsigned int (*v14) (unsigned short);
extern signed short v15 (unsigned int);
extern signed short (*v16) (unsigned int);
extern void v17 (signed int);
extern void (*v18) (signed int);
extern unsigned int v19 (signed char, unsigned short, signed char, unsigned int);
extern unsigned int (*v20) (signed char, unsigned short, signed char, unsigned int);
extern signed int v21 (signed short, signed int, unsigned short);
extern signed int (*v22) (signed short, signed int, unsigned short);
extern void v23 (unsigned char);
extern void (*v24) (unsigned char);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned char v27 (signed char, signed short, unsigned char);
extern unsigned char (*v28) (signed char, signed short, unsigned char);
extern unsigned char v29 (unsigned char);
extern unsigned char (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed short v32 = -2;
signed int v31 = 0;

signed int v11 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 4;
signed char v36 = 0;
signed int v35 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v9 (signed int v38, signed short v39, unsigned short v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 0;
signed char v42 = -2;
unsigned short v41 = 7;
trace++;
switch (trace)
{
case 1: 
return 2U;
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
unsigned short v47 = 4;
unsigned short v46 = 6;
unsigned short v45 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed int v48;
signed short v49;
unsigned short v50;
unsigned int v51;
v48 = 3 + 3;
v49 = 2 - 0;
v50 = 6 - 5;
v51 = v9 (v48, v49, v50);
history[history_index++] = (int)v51;
}
break;
case 2: 
{
signed char v52;
unsigned short v53;
signed char v54;
unsigned int v55;
unsigned int v56;
v52 = -4 - -3;
v53 = v45 + v46;
v54 = -3 - -4;
v55 = 0U + 6U;
v56 = v19 (v52, v53, v54, v55);
history[history_index++] = (int)v56;
}
break;
case 12: 
return 6;
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
unsigned char v59;
unsigned short v60;
v59 = 5 - 1;
v60 = v1 (v59);
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

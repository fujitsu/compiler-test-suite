#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned int, signed short);
static signed int (*v2) (unsigned int, signed short) = v1;
extern unsigned int v3 (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned int (*v4) (signed int, unsigned int, unsigned int, unsigned int);
extern unsigned char v5 (unsigned char, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed int, unsigned int);
extern void v7 (unsigned short, signed short);
extern void (*v8) (unsigned short, signed short);
static signed char v9 (void);
static signed char (*v10) (void) = v9;
extern signed int v11 (signed int, unsigned int, signed int, unsigned short);
extern signed int (*v12) (signed int, unsigned int, signed int, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (unsigned short, signed int);
extern unsigned int (*v16) (unsigned short, signed int);
extern void v17 (signed short, signed char, unsigned short, unsigned int);
extern void (*v18) (signed short, signed char, unsigned short, unsigned int);
extern signed short v19 (unsigned char, signed int, unsigned short);
extern signed short (*v20) (unsigned char, signed int, unsigned short);
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern void v23 (signed short, unsigned short, signed int);
extern void (*v24) (signed short, unsigned short, signed int);
extern signed char v25 (signed char, signed int);
extern signed char (*v26) (signed char, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned int, unsigned short, signed char, signed int);
extern signed char (*v30) (unsigned int, unsigned short, signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned char v32 = 7;
unsigned int v31 = 6U;

static signed char v9 (void)
{
{
for (;;) {
signed short v36 = -1;
unsigned char v35 = 5;
unsigned int v34 = 6U;
trace++;
switch (trace)
{
case 3: 
{
signed short v37;
signed char v38;
unsigned short v39;
unsigned int v40;
v37 = 1 + 0;
v38 = -3 + 2;
v39 = 0 + 5;
v40 = 2U + 3U;
v17 (v37, v38, v39, v40);
}
break;
case 9: 
{
signed short v41;
v41 = v27 ();
history[history_index++] = (int)v41;
}
break;
case 11: 
return -3;
default: abort ();
}
}
}
}

static signed int v1 (unsigned int v42, signed short v43)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
signed char v46 = 2;
unsigned short v45 = 0;
unsigned short v44 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v47;
signed int v48;
signed char v49;
v47 = v46 + -4;
v48 = 1 + -4;
v49 = v25 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 2: 
{
signed char v50;
v50 = v9 ();
history[history_index++] = (int)v50;
}
break;
case 12: 
return -1;
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
signed short v54;
signed int v55;
v53 = v31 + 1U;
v54 = 3 - 3;
v55 = v1 (v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

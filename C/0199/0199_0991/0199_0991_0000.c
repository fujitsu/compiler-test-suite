#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (void);
static unsigned int (*v2) (void) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned short, signed int, signed int);
extern signed char (*v6) (unsigned short, signed int, signed int);
unsigned int v7 (unsigned short, unsigned char);
unsigned int (*v8) (unsigned short, unsigned char) = v7;
extern signed char v9 (signed int);
extern signed char (*v10) (signed int);
extern signed int v11 (unsigned char);
extern signed int (*v12) (unsigned char);
extern signed int v13 (signed char, unsigned char, unsigned int);
extern signed int (*v14) (signed char, unsigned char, unsigned int);
extern signed int v15 (unsigned short, signed short, unsigned short, signed int);
extern signed int (*v16) (unsigned short, signed short, unsigned short, signed int);
extern unsigned short v17 (signed char, unsigned int);
extern unsigned short (*v18) (signed char, unsigned int);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
unsigned short v21 (signed int, signed int, signed short);
unsigned short (*v22) (signed int, signed int, signed short) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern void v27 (signed int, unsigned char, signed short, signed int);
extern void (*v28) (signed int, unsigned char, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned int v32 = 4U;
unsigned char v31 = 1;

unsigned short v21 (signed int v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 6U;
signed short v38 = -1;
unsigned char v37 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (unsigned short v40, unsigned char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = -3;
unsigned short v43 = 1;
unsigned int v42 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (void)
{
{
for (;;) {
signed char v47 = -3;
unsigned char v46 = 4;
signed int v45 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v48;
signed short v49;
unsigned short v50;
signed int v51;
signed int v52;
v48 = 0 - 3;
v49 = 3 + -3;
v50 = 6 + 3;
v51 = -2 - v45;
v52 = v15 (v48, v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 4: 
{
signed short v53;
v53 = 1 + -1;
v3 (v53);
}
break;
case 14: 
return 3U;
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
unsigned int v56;
v56 = v1 ();
history[history_index++] = (int)v56;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

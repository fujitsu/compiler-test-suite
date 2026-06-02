#include <stdio.h>
#include <stdlib.h>
static signed short v1 (unsigned short, unsigned int, signed short);
static signed short (*v2) (unsigned short, unsigned int, signed short) = v1;
extern signed char v3 (signed int, unsigned char, unsigned char);
extern signed char (*v4) (signed int, unsigned char, unsigned char);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
signed char v7 (unsigned short, signed int);
signed char (*v8) (unsigned short, signed int) = v7;
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (signed char, signed char, unsigned int);
extern unsigned char (*v20) (signed char, signed char, unsigned int);
extern signed char v21 (signed int, signed short, signed int, signed int);
extern signed char (*v22) (signed int, signed short, signed int, signed int);
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern unsigned short v27 (signed int, unsigned short);
extern unsigned short (*v28) (signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
unsigned short v32 = 4;
unsigned int v31 = 0U;

signed char v7 (unsigned short v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -4;
unsigned int v37 = 3U;
signed short v36 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned int v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 5;
unsigned char v41 = 1;
signed int v40 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v1 (unsigned short v43, unsigned int v44, signed short v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = -3;
unsigned char v47 = 2;
unsigned short v46 = 0;
trace++;
switch (trace)
{
case 0: 
{
v17 ();
}
break;
case 14: 
return v45;
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
unsigned short v51;
unsigned int v52;
signed short v53;
signed short v54;
v51 = v32 - v32;
v52 = v31 + v31;
v53 = -4 + -2;
v54 = v1 (v51, v52, v53);
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

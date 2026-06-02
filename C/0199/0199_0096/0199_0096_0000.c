#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (signed int, unsigned short);
static unsigned char (*v2) (signed int, unsigned short) = v1;
extern unsigned char v3 (unsigned int);
extern unsigned char (*v4) (unsigned int);
extern void v5 (signed int, unsigned short, unsigned char);
extern void (*v6) (signed int, unsigned short, unsigned char);
extern unsigned char v7 (signed int, unsigned short);
extern unsigned char (*v8) (signed int, unsigned short);
extern unsigned char v9 (signed int, signed int, unsigned int);
extern unsigned char (*v10) (signed int, signed int, unsigned int);
extern unsigned int v11 (unsigned char, signed char, signed char);
extern unsigned int (*v12) (unsigned char, signed char, signed char);
unsigned int v13 (signed char, unsigned short);
unsigned int (*v14) (signed char, unsigned short) = v13;
extern signed char v15 (unsigned short, unsigned int);
extern signed char (*v16) (unsigned short, unsigned int);
extern void v19 (unsigned short, signed int, unsigned short, unsigned int);
extern void (*v20) (unsigned short, signed int, unsigned short, unsigned int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern void v29 (signed short, signed int);
extern void (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
signed char v32 = 2;
signed int v31 = 1;

unsigned short v21 (void)
{
{
for (;;) {
unsigned int v36 = 6U;
unsigned char v35 = 4;
signed short v34 = -4;
trace++;
switch (trace)
{
case 6: 
{
unsigned char v37;
v37 = v23 ();
history[history_index++] = (int)v37;
}
break;
case 10: 
{
unsigned char v38;
v38 = v23 ();
history[history_index++] = (int)v38;
}
break;
case 12: 
return 6;
case 16: 
return 2;
default: abort ();
}
}
}
}

unsigned int v13 (signed char v39, unsigned short v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned char v43 = 4;
unsigned char v42 = 0;
unsigned short v41 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (signed int v44, unsigned short v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned short v48 = 7;
signed int v47 = -1;
unsigned char v46 = 4;
trace++;
switch (trace)
{
case 0: 
{
signed int v49;
unsigned short v50;
unsigned char v51;
v49 = v47 + v47;
v50 = 0 - v45;
v51 = v7 (v49, v50);
history[history_index++] = (int)v51;
}
break;
case 20: 
return 0;
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
signed int v54;
unsigned short v55;
unsigned char v56;
v54 = v31 - v31;
v55 = 2 - 0;
v56 = v1 (v54, v55);
history[history_index++] = (int)v56;
}
} while (trace < 20);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

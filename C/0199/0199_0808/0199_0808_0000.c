#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (void);
static unsigned char (*v2) (void) = v1;
extern signed short v3 (unsigned short, unsigned char, signed short);
extern signed short (*v4) (unsigned short, unsigned char, signed short);
extern signed short v5 (signed short, unsigned char, unsigned char);
extern signed short (*v6) (signed short, unsigned char, unsigned char);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed short v9 (signed int, signed short, signed short, unsigned char);
extern signed short (*v10) (signed int, signed short, signed short, unsigned char);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed char v15 (signed int, signed short, unsigned short);
extern signed char (*v16) (signed int, signed short, unsigned short);
extern unsigned char v17 (unsigned char, signed short, unsigned int, unsigned char);
extern unsigned char (*v18) (unsigned char, signed short, unsigned int, unsigned char);
extern signed int v19 (signed int, signed int, unsigned short, unsigned char);
extern signed int (*v20) (signed int, signed int, unsigned short, unsigned char);
extern void v21 (signed char, signed short, signed char, unsigned short);
extern void (*v22) (signed char, signed short, signed char, unsigned short);
extern signed int v23 (signed char, signed char);
extern signed int (*v24) (signed char, signed char);
extern signed char v25 (signed short, unsigned char);
extern signed char (*v26) (signed short, unsigned char);
extern unsigned char v27 (signed short, signed short, unsigned int, unsigned short);
extern unsigned char (*v28) (signed short, signed short, unsigned int, unsigned short);
extern signed short v29 (unsigned char, signed char);
extern signed short (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
unsigned char v32 = 7;
unsigned int v31 = 4U;

signed short v7 (void)
{
{
for (;;) {
unsigned int v36 = 0U;
unsigned short v35 = 6;
signed short v34 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v1 (void)
{
{
for (;;) {
signed char v39 = -2;
unsigned short v38 = 3;
unsigned char v37 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v40;
signed short v41;
signed char v42;
unsigned short v43;
v40 = v39 - -4;
v41 = -4 + 2;
v42 = -1 - 0;
v43 = v38 + 6;
v21 (v40, v41, v42, v43);
}
break;
case 14: 
return 1;
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
unsigned char v46;
v46 = v1 ();
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

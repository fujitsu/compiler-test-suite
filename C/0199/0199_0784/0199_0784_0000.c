#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short, signed short);
static unsigned short (*v2) (unsigned short, signed short) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (signed short, signed char, unsigned short);
extern signed short (*v6) (signed short, signed char, unsigned short);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned char v11 (signed int);
extern unsigned char (*v12) (signed int);
extern signed short v13 (signed short, unsigned short, unsigned char);
extern signed short (*v14) (signed short, unsigned short, unsigned char);
extern unsigned short v15 (signed short, unsigned short, unsigned int);
extern unsigned short (*v16) (signed short, unsigned short, unsigned int);
extern signed int v17 (unsigned int);
extern signed int (*v18) (unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (signed char, unsigned int);
extern signed char (*v22) (signed char, unsigned int);
extern signed char v23 (unsigned char, unsigned char);
extern signed char (*v24) (unsigned char, unsigned char);
extern signed int v25 (signed char, unsigned char, signed short, unsigned char);
extern signed int (*v26) (signed char, unsigned char, signed short, unsigned char);
signed short v27 (void);
signed short (*v28) (void) = v27;
extern void v29 (unsigned short, signed short);
extern void (*v30) (unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned char v32 = 4;
signed int v31 = -2;

signed short v27 (void)
{
{
for (;;) {
unsigned int v36 = 6U;
signed int v35 = 2;
signed int v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v37, signed short v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
signed char v41 = -2;
unsigned int v40 = 7U;
unsigned short v39 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v42;
unsigned short v43;
unsigned char v44;
signed short v45;
v42 = 0 + v38;
v43 = v39 - 7;
v44 = 0 + 6;
v45 = v13 (v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 12: 
return v37;
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
unsigned short v48;
signed short v49;
unsigned short v50;
v48 = 5 - 3;
v49 = -2 - -4;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

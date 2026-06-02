#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned short, signed short, signed short);
static unsigned short (*v2) (unsigned short, signed short, signed short) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
signed char v5 (void);
signed char (*v6) (void) = v5;
extern unsigned char v7 (signed int, unsigned int, unsigned short, unsigned int);
extern unsigned char (*v8) (signed int, unsigned int, unsigned short, unsigned int);
extern signed short v9 (unsigned char, signed char, unsigned int, unsigned char);
extern signed short (*v10) (unsigned char, signed char, unsigned int, unsigned char);
extern signed char v11 (unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed char);
extern unsigned short v13 (unsigned char);
extern unsigned short (*v14) (unsigned char);
extern unsigned short v15 (signed short, unsigned short, signed int, signed char);
extern unsigned short (*v16) (signed short, unsigned short, signed int, signed char);
extern unsigned char v17 (signed char, unsigned int, signed char);
extern unsigned char (*v18) (signed char, unsigned int, signed char);
extern void v19 (signed int, signed short, unsigned short, unsigned short);
extern void (*v20) (signed int, signed short, unsigned short, unsigned short);
extern signed char v21 (signed short, signed int);
extern signed char (*v22) (signed short, signed int);
extern signed int v23 (signed int, signed int, signed char, unsigned char);
extern signed int (*v24) (signed int, signed int, signed char, unsigned char);
extern unsigned short v25 (unsigned short, unsigned char, signed int);
extern unsigned short (*v26) (unsigned short, unsigned char, signed int);
extern unsigned char v27 (unsigned char, unsigned int, signed int);
extern unsigned char (*v28) (unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
signed int v32 = -4;
unsigned int v31 = 4U;

signed char v5 (void)
{
{
for (;;) {
unsigned short v36 = 5;
signed short v35 = -1;
unsigned char v34 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned short v37, signed short v38, signed short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 3;
unsigned short v41 = 5;
unsigned short v40 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v43;
v43 = v3 ();
history[history_index++] = (int)v43;
}
break;
case 2: 
{
signed int v44;
unsigned int v45;
unsigned short v46;
unsigned int v47;
unsigned char v48;
v44 = 0 + 3;
v45 = 1U + 6U;
v46 = 6 - 4;
v47 = 6U + 1U;
v48 = v7 (v44, v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 14: 
return v40;
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
signed short v52;
signed short v53;
unsigned short v54;
v51 = 3 - 0;
v52 = 2 + -4;
v53 = 3 + v33;
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

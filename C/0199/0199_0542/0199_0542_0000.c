#include <stdio.h>
#include <stdlib.h>
static unsigned short v1 (unsigned char, signed int, unsigned short);
static unsigned short (*v2) (unsigned char, signed int, unsigned short) = v1;
extern signed short v3 (signed int, signed short, signed int);
extern signed short (*v4) (signed int, signed short, signed int);
extern signed short v5 (unsigned short, signed int, unsigned char);
extern signed short (*v6) (unsigned short, signed int, unsigned char);
extern unsigned short v7 (signed short, unsigned short, signed short);
extern unsigned short (*v8) (signed short, unsigned short, signed short);
extern signed short v9 (signed int);
extern signed short (*v10) (signed int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern signed char v15 (signed int, unsigned int, unsigned int);
extern signed char (*v16) (signed int, unsigned int, unsigned int);
extern signed char v17 (unsigned char, signed int, signed short);
extern signed char (*v18) (unsigned char, signed int, signed short);
extern unsigned int v19 (signed int, unsigned int);
extern unsigned int (*v20) (signed int, unsigned int);
extern unsigned int v21 (unsigned int, unsigned char, signed short, signed short);
extern unsigned int (*v22) (unsigned int, unsigned char, signed short, signed short);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed char, signed int, unsigned char);
extern unsigned char (*v28) (signed char, signed int, unsigned char);
extern void v29 (signed char, signed int);
extern void (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 0;
unsigned char v32 = 1;
signed short v31 = 1;

unsigned short v11 (void)
{
{
for (;;) {
unsigned int v36 = 4U;
signed short v35 = -3;
unsigned char v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v1 (unsigned char v37, signed int v38, unsigned short v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 0;
unsigned short v41 = 6;
signed short v40 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v43;
signed int v44;
unsigned char v45;
signed short v46;
v43 = v39 + v41;
v44 = v38 - v38;
v45 = v37 + v37;
v46 = v5 (v43, v44, v45);
history[history_index++] = (int)v46;
}
break;
case 2: 
{
signed int v47;
unsigned int v48;
unsigned int v49;
v47 = 0 - 2;
v48 = 3U - 5U;
v49 = v19 (v47, v48);
history[history_index++] = (int)v49;
}
break;
case 12: 
return v41;
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
unsigned char v52;
signed int v53;
unsigned short v54;
unsigned short v55;
v52 = 2 + v32;
v53 = v33 + -4;
v54 = 2 + 7;
v55 = v1 (v52, v53, v54);
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

#include <stdio.h>
#include <stdlib.h>
static unsigned char v1 (void);
static unsigned char (*v2) (void) = v1;
extern unsigned char v3 (signed short, signed short, unsigned char, unsigned int);
extern unsigned char (*v4) (signed short, signed short, unsigned char, unsigned int);
extern unsigned int v5 (unsigned int, signed short, signed short);
extern unsigned int (*v6) (unsigned int, signed short, signed short);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
extern signed int v9 (unsigned short, signed short);
extern signed int (*v10) (unsigned short, signed short);
extern unsigned char v11 (unsigned int, unsigned int);
extern unsigned char (*v12) (unsigned int, unsigned int);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
unsigned char v19 (signed int);
unsigned char (*v20) (signed int) = v19;
extern unsigned short v21 (unsigned char, unsigned char, unsigned char, unsigned char);
extern unsigned short (*v22) (unsigned char, unsigned char, unsigned char, unsigned char);
extern signed char v23 (signed short, signed int, signed char);
extern signed char (*v24) (signed short, signed int, signed char);
extern signed int v25 (unsigned int);
extern signed int (*v26) (unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 3;
signed short v32 = 2;
unsigned int v31 = 2U;

unsigned char v19 (signed int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed int v37 = -4;
signed short v36 = 2;
unsigned short v35 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 5;
signed short v40 = 1;
signed char v39 = 2;
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
signed int v44 = -2;
signed int v43 = -2;
signed short v42 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed short v45;
signed int v46;
signed char v47;
signed char v48;
v45 = v42 - v42;
v46 = v43 + 3;
v47 = -4 + -4;
v48 = v23 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 2: 
{
unsigned int v49;
signed int v50;
v49 = 3U + 1U;
v50 = v25 (v49);
history[history_index++] = (int)v50;
}
break;
case 4: 
{
unsigned int v51;
unsigned int v52;
unsigned char v53;
v51 = 2U - 6U;
v52 = 7U + 7U;
v53 = v11 (v51, v52);
history[history_index++] = (int)v53;
}
break;
case 14: 
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
unsigned char v56;
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

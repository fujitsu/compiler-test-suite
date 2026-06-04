#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (void);
static unsigned int (*v2) (void) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern signed char v7 (unsigned int, signed char);
extern signed char (*v8) (unsigned int, signed char);
extern signed short v9 (unsigned short, signed int, unsigned int);
extern signed short (*v10) (unsigned short, signed int, unsigned int);
extern unsigned int v11 (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned int (*v12) (unsigned char, signed char, unsigned int, unsigned short);
extern void v13 (unsigned char, unsigned int, unsigned int, unsigned int);
extern void (*v14) (unsigned char, unsigned int, unsigned int, unsigned int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern unsigned int v17 (signed char);
extern unsigned int (*v18) (signed char);
extern unsigned short v19 (signed char);
extern unsigned short (*v20) (signed char);
signed char v21 (signed char);
signed char (*v22) (signed char) = v21;
extern unsigned char v23 (unsigned int, signed char, signed short, unsigned short);
extern unsigned char (*v24) (unsigned int, signed char, signed short, unsigned short);
extern unsigned short v25 (unsigned int, signed short, unsigned char);
extern unsigned short (*v26) (unsigned int, signed short, unsigned char);
extern signed char v27 (unsigned short);
extern signed char (*v28) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 0;
signed int v31 = -1;

signed char v21 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed short v37 = -1;
unsigned char v36 = 3;
unsigned char v35 = 2;
trace++;
switch (trace)
{
case 2: 
return v34;
case 5: 
{
unsigned int v38;
signed char v39;
signed short v40;
unsigned short v41;
unsigned char v42;
v38 = 1U - 6U;
v39 = v34 - v34;
v40 = 0 - v37;
v41 = 6 + 6;
v42 = v23 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 13: 
return v34;
default: abort ();
}
}
}
}

unsigned short v5 (void)
{
{
for (;;) {
unsigned int v45 = 1U;
signed short v44 = -1;
unsigned short v43 = 6;
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
unsigned char v48 = 6;
signed short v47 = -3;
unsigned char v46 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v49;
v49 = v3 ();
history[history_index++] = (int)v49;
}
break;
case 16: 
return 4U;
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
unsigned int v52;
v52 = v1 ();
history[history_index++] = (int)v52;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

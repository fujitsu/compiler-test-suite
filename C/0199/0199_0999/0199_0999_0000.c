#include <stdio.h>
#include <stdlib.h>
static unsigned int v1 (unsigned char, unsigned int);
static unsigned int (*v2) (unsigned char, unsigned int) = v1;
unsigned int v3 (unsigned short);
unsigned int (*v4) (unsigned short) = v3;
signed char v5 (unsigned char, unsigned char);
signed char (*v6) (unsigned char, unsigned char) = v5;
extern signed short v7 (signed short, unsigned int, unsigned short);
extern signed short (*v8) (signed short, unsigned int, unsigned short);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern void v17 (unsigned int, unsigned char, unsigned short);
extern void (*v18) (unsigned int, unsigned char, unsigned short);
extern signed short v19 (signed short, signed short, signed char);
extern signed short (*v20) (signed short, signed short, signed char);
extern unsigned char v23 (unsigned int, signed short, unsigned char, signed short);
extern unsigned char (*v24) (unsigned int, signed short, unsigned char, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 1U;
unsigned int v32 = 6U;
unsigned int v31 = 0U;

signed char v5 (unsigned char v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 1U;
signed short v37 = 2;
signed int v36 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed int v42 = 1;
unsigned int v41 = 6U;
unsigned int v40 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v1 (unsigned char v43, unsigned int v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = -1;
unsigned char v46 = 6;
signed short v45 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v48;
v48 = v9 ();
history[history_index++] = (int)v48;
}
break;
case 16: 
return 6U;
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
unsigned char v51;
unsigned int v52;
unsigned int v53;
v51 = 1 + 3;
v52 = v33 + v31;
v53 = v1 (v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}

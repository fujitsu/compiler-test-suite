#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
void v3 (void);
void (*v4) (void) = v3;
extern void v5 (void);
extern void (*v6) (void);
extern void v7 (unsigned short, unsigned char, signed char);
extern void (*v8) (unsigned short, unsigned char, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
static signed int v15 (signed int, signed char, signed int);
static signed int (*v16) (signed int, signed char, signed int) = v15;
extern void v17 (unsigned int, unsigned int, unsigned int);
extern void (*v18) (unsigned int, unsigned int, unsigned int);
unsigned int v19 (unsigned int, signed int);
unsigned int (*v20) (unsigned int, signed int) = v19;
extern signed int v21 (unsigned int);
extern signed int (*v22) (unsigned int);
extern void v23 (signed short, signed int, signed int, unsigned int);
extern void (*v24) (signed short, signed int, signed int, unsigned int);
extern unsigned char v25 (unsigned int, signed int);
extern unsigned char (*v26) (unsigned int, signed int);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern unsigned int v29 (unsigned int, signed int);
extern unsigned int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -4;
signed int v32 = 0;
signed char v31 = 2;

unsigned int v19 (unsigned int v34, signed int v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
signed short v38 = -1;
unsigned short v37 = 1;
unsigned short v36 = 0;
trace++;
switch (trace)
{
case 10: 
{
signed int v39;
signed char v40;
signed int v41;
signed int v42;
v39 = -1 - v35;
v40 = 0 - -3;
v41 = -3 - 3;
v42 = v15 (v39, v40, v41);
history[history_index++] = (int)v42;
}
break;
case 12: 
return 1U;
default: abort ();
}
}
}
}

static signed int v15 (signed int v43, signed char v44, signed int v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 0U;
unsigned int v47 = 0U;
signed int v46 = 1;
trace++;
switch (trace)
{
case 11: 
return v45;
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
signed int v51 = -2;
unsigned int v50 = 2U;
unsigned char v49 = 7;
trace++;
switch (trace)
{
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
unsigned char v55;
v54 = 2 - v33;
v55 = v1 (v54);
history[history_index++] = (int)v55;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
